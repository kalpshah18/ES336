## Which version is easier to understand when viewed in assembly? Which version is likely to use more stack memory?
Assembly generated with -O0 closely follows the C source, using stack-based variables and no optimizations.
With -O2, the compiler performs loop optimizations, register allocation, and instruction reordering, significantly reducing the number of instructions and improving performance.
