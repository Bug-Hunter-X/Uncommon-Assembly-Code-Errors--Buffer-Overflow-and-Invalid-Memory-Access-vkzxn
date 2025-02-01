# Uncommon Assembly Code Errors: Buffer Overflow and Invalid Memory Access

This repository showcases two common yet easily missed errors in x86 assembly programming:

1. **Buffer Overflow:** The code attempts to access memory outside of the allocated buffer if the value of `ecx` exceeds the bounds.  This can lead to program crashes or unexpected behavior.
2. **Invalid Memory Access:** The code attempts to write to a memory address that may be uninitialized or invalid. This leads to segmentation faults or data corruption.

The `bug.asm` file contains the erroneous code. The `bugSolution.asm` file provides corrected and safer alternatives, showcasing good practices to avoid these issues.

**Note:** This is a simplified example to illustrate the errors.  Real-world vulnerabilities are often more subtle and complex.