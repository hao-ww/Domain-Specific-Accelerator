# Domain-Specific Accelerator for CNN Inference

A hardware-software co-design project for accelerating **CNN inference** on the **RISC-V Aquila SoC** using a custom **Domain-Specific Accelerator (DSA)** implemented on FPGA.

The accelerator communicates with the RISC-V processor through **Memory-Mapped I/O (MMIO)** and accelerates computation-intensive CNN operations using a hardware floating-point **Fused Multiply-Add (FMA)** datapath.

Through incremental hardware and software optimization, the system reduces the inference time from **54,523 ms to 4,285 ms**, achieving a **12.72× speedup** while maintaining **98% classification accuracy**.

---

## Highlights

- Custom MMIO-based Domain-Specific Accelerator
- RISC-V hardware-software co-design
- Hardware floating-point FMA computation
- Fully connected layer acceleration
- 3D convolution acceleration
- Direct input patch gathering
- Weight preloading
- Hardware average pooling
- Systematic bottleneck analysis
- FPGA implementation on Arty A7-100T
- **12.72× end-to-end speedup**
- **98% classification accuracy**

---

## System Overview

The system consists of a **RISC-V Aquila SoC** running CNN inference software and a custom hardware accelerator connected as an MMIO peripheral.

```text
                  RISC-V Aquila SoC
                         │
                         │ Load / Store
                         │
                         ▼
                ┌─────────────────┐
                │   MMIO Interface │
                │   0xC4000000     │
                └────────┬────────┘
                         │
                         ▼
                ┌─────────────────┐
                │   DSA Feeder    │
                │                 │
                │ Input Buffer A  │
                │ Weight Buffer B │
                └────────┬────────┘
                         │
                         ▼
                ┌─────────────────┐
                │ Floating-Point  │
                │      FMA        │
                └────────┬────────┘
                         │
                         ▼
                ┌─────────────────┐
                │ Output Register │
                └─────────────────┘
```

The processor sends input activations and weights to the accelerator through MMIO, triggers computation, waits for completion, and retrieves the result.

---

## CNN Model

The target application is a 6-layer CNN for handwritten digit classification.

| Layer | Configuration |
|---|---|
| Conv1 | 1 input channel → 3 output channels, 5×5 kernel |
| Pool1 | 2×2 average pooling |
| Conv2 | 3 input channels → 12 output channels, 5×5 kernel |
| Pool2 | 2×2 average pooling |
| FC1 | 192 → 30 |
| FC2 | 30 → 10 |

The original software-only implementation required approximately **54.5 seconds** to classify 100 test images.

---

## DSA Architecture

The Domain-Specific Accelerator is implemented as an MMIO peripheral with base address:

```text
0xC4000000
```

The accelerator contains:

- Input activation buffer
- Weight buffer
- Vector length control
- Weight offset control
- Floating-point FMA datapath
- Control/status interface
- Output register

### MMIO Register Map

| Offset | Register | Description |
|---|---|---|
| `0x000` | `CTRL` | Control / status register |
| `0x004` | `LEN` | Vector length |
| `0x008` | `W_OFF` | Weight offset in BRAM |
| `0x010` | `IN_A` | Input buffer A |
| `0x400` | `IN_B` | Weight buffer B |
| `0x1000` | `OUT` | Floating-point output |

---

## MMIO Communication

A typical hardware dot-product operation follows this sequence:

```text
1. Write vector length to LEN
2. Write input activations to IN_A
3. Write weights to IN_B
4. Set START bit in CTRL
5. Poll CTRL until DONE
6. Read result from OUT
```

The SoC performs address decoding for the DSA address space:

```verilog
assign dsa_sel = (dev_addr[31:24] == 8'hC4);

assign dev_dout  = (dsa_sel) ? dsa_dout  : ...;
assign dev_ready = (dsa_sel) ? dsa_ready : ...;
```

This allows standard RISC-V load/store instructions to communicate with the accelerator.

---

# Optimization Methodology

Instead of directly designing a complex accelerator, the project uses an **incremental optimization methodology**.

Each optimization is enabled independently using compile-time flags, allowing the performance contribution of every optimization to be measured.

---

## Stage 1 — Fully Connected Layer Acceleration

The fully connected layers perform matrix-vector multiplication, which can be decomposed into multiple dot products.

The DSA is first used to accelerate these dot-product operations.

```text
Software Only
    ↓
Hardware Dot Product
```

### Result

```text
54,523 ms → 52,185 ms
Speedup: 1.04×
```

The small improvement indicates that fully connected layers are not the dominant computational bottleneck.

---

## Stage 2 — Conv3D Acceleration

Convolution accounts for most of the CNN workload.

For each output pixel, the software extracts a 3D input patch and sends it with the corresponding kernel weights to the DSA.

```text
Input Feature Map
       │
       ▼
 Extract 3D Patch
       │
       ├──────────────┐
       ▼              ▼
 Input Patch        Kernel
       │              │
       └──────┬───────┘
              ▼
        Hardware DSA
              │
              ▼
         Dot Product
              │
              ▼
        Output Pixel
```

### Result

```text
52,185 ms → 8,290 ms
Speedup: 6.58×
```

This shows that convolution is the main computational bottleneck of the original implementation.

---

## Stage 3 — Direct Gather

The initial Conv3D accelerator implementation first copied the input patch into a temporary software buffer before transferring it to the DSA.

```text
Before

Feature Map
    ↓
Temporary Buffer
    ↓
MMIO
    ↓
DSA
```

The optimized implementation directly gathers the required feature-map elements and writes them to the hardware input buffer.

```text
After

Feature Map
    ↓
MMIO
    ↓
DSA
```

This removes unnecessary memory-copy overhead.

### Result

```text
8,290 ms → 7,194 ms
Speedup: 7.58×
```

---

## Stage 4 — Simplified Convolution Parameters

The CNN uses fixed convolution parameters:

```text
padding = 0
stride  = 1
```

Because these parameters never change, unnecessary runtime parameter checking and address calculations can be removed.

The simplified implementation directly computes the input base position from the output coordinate.

### Result

```text
7,194 ms → 7,194 ms
Speedup: 7.58×
```

Although this optimization does not significantly reduce execution time, it simplifies the software path and enables further optimization.

---

## Stage 5 — Weight Preloading

MMIO traffic was identified as one of the largest remaining performance bottlenecks.

Originally, every convolution operation transferred both:

```text
75 input values
+
75 weight values
=
150 MMIO writes
```

However, convolution weights are reused across multiple output pixels.

Therefore, weights are preloaded into the DSA's internal buffer and retained until a new kernel is required.

```text
Before

Input  ──────▶ DSA
Weight ──────▶ DSA

for every output pixel
```

```text
After

Weight ──────▶ DSA     (once)

Input  ──────▶ DSA
Input  ──────▶ DSA
Input  ──────▶ DSA
...
```

This reduces MMIO writes for each Conv3D operation from:

```text
150 → 75
```

a **50% reduction in MMIO data transfers**.

### Result

```text
7,194 ms → 5,098 ms
Speedup: 10.69×
```

---

## Stage 6 — Pooling Acceleration

The 2×2 average pooling operation can also be expressed as a dot product:

```text
result =
input[0] × 0.25 +
input[1] × 0.25 +
input[2] × 0.25 +
input[3] × 0.25
```

This allows the existing DSA datapath to be reused for average pooling without designing a completely separate hardware unit.

### Result

```text
5,098 ms → 4,285 ms
Speedup: 12.72×
```

---

# Performance Results

| Optimization Stage | Execution Time | Accuracy | Cumulative Speedup |
|---|---:|---:|---:|
| Software Baseline | 54,523 ms | 98% | 1.00× |
| + FC Acceleration | 52,185 ms | 98% | 1.04× |
| + Conv3D | 8,290 ms | 98% | 6.58× |
| + Direct Gather | 7,194 ms | 98% | 7.58× |
| + Simplified Parameters | 7,194 ms | 98% | 7.58× |
| + Weight Preloading | 5,098 ms | 98% | 10.69× |
| + Pool Acceleration | **4,285 ms** | **98%** | **12.72×** |

Overall:

```text
54.523 s
   ↓
 4.285 s

12.72× Speedup
```

while preserving the original **98% classification accuracy**.

---

# Bottleneck Analysis

One of the main goals of this project was not only to implement hardware acceleration, but also to identify the true system bottleneck.

## Before Weight Preloading

For a `5×5×3` convolution kernel:

```text
75 input values
75 weight values
----------------
150 MMIO writes
```

Estimated execution-time distribution:

```text
Data Feeding    ██████████████  70%
Computation     ██████          30%
```

Despite accelerating the arithmetic computation, most of the execution time is spent transferring data between the CPU and accelerator.

---

## After Weight Preloading

By retaining weights inside the accelerator:

```text
75 input values
0 repeated weight values
------------------------
75 MMIO writes
```

The approximate distribution becomes:

```text
Data Feeding    ███████████     54%
Computation     █████████       46%
```

This demonstrates an important hardware-acceleration principle:

> Accelerating arithmetic alone is insufficient if data movement dominates execution time.

---

# Compile-Time Optimization Flags

Different optimization stages can be enabled independently through compile-time flags.

| Flag | Description |
|---|---|
| `USE_HW_DOT` | Fully connected dot-product acceleration |
| `USE_HW_CONV3D` | 3D convolution acceleration |
| `USE_HW_DIRECT_GATHER` | Remove temporary input-patch copying |
| `USE_HW_CONV_SIMPLIFIED` | Simplified convolution indexing |
| `USE_HW_WEIGHT_PRELOAD` | Preload and reuse convolution weights |
| `USE_HW_POOL` | Hardware average-pooling acceleration |

This allows different hardware/software configurations to be evaluated independently.

---

# FPGA Resource Utilization

The accelerator was implemented on an **Arty A7-100T FPGA**.

| Resource | Usage | Available | Utilization |
|---|---:|---:|---:|
| LUT | ~35,000 | 63,400 | ~55% |
| BRAM | 4 | 135 | ~3% |
| DSP | 3 | 240 | ~1% |

The low DSP utilization suggests that additional arithmetic parallelism is possible, although LUT utilization becomes a more significant implementation constraint.

---

# Key Findings

### 1. Convolution is the primary computational bottleneck

Conv3D acceleration alone improves total inference performance from:

```text
1.04× → 6.58×
```

and contributes the largest reduction in execution time.

### 2. Data movement can dominate accelerator performance

After introducing hardware acceleration, MMIO data transfer accounts for approximately **70%** of the remaining execution time.

### 3. Data reuse is critical

Weight preloading eliminates repeated kernel transfers and reduces MMIO traffic by approximately **50%** for convolution operations.

This improves cumulative speedup from:

```text
7.58× → 10.69×
```

### 4. One accelerator can support multiple CNN operations

The same dot-product/FMA datapath is reused for:

- Fully connected layers
- Convolution
- Average pooling

reducing the need for separate specialized hardware units.

### 5. Hardware-software co-design requires system-level optimization

Performance depends not only on the accelerator datapath, but also on:

- MMIO communication
- Memory copies
- Address calculations
- Data reuse
- Software control flow
- Hardware/software partitioning

---

# Final Result

The final implementation achieves:

```text
Baseline Runtime       54,523 ms
Optimized Runtime       4,285 ms
Classification Accuracy    98%
Overall Speedup          12.72×
```

This project demonstrates how **hardware-software co-design**, combined with systematic bottleneck analysis and data-movement optimization, can significantly accelerate CNN inference on a resource-constrained RISC-V FPGA platform.

---

## Technologies

- Verilog
- RISC-V
- Aquila SoC
- FPGA
- Arty A7-100T
- Memory-Mapped I/O
- Xilinx Floating-Point IP
- CNN Acceleration
- Hardware-Software Co-design