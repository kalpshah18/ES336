## Code:

```c
#include <stdio.h>
#include <stdlib.h>
int global_init = 10; // (1)
int global_uninit; // (2)
const int read_only_var = 100; // (3)

void function() {
    static int static_init = 5; // (4)
    static int static_uninit;
    int local_var = 20;
    char *msg = "Hello";
    int *ptr = malloc(4);
}
```

## Memory Location:

| Variable/Value | Memory Segment |
|----------|----------|
| global_init | Data |
| global_uninit | BSS |
| read_only_var | Text |
| static_init | Data |
| static_uninit | BSS |
| local_var | Stack |
| The pointer variable msg | Stack |
| The String Literal "Hello" | Text |
| The pointer variable ptr | Stack |
| The memory allocated by malloc | Heap |