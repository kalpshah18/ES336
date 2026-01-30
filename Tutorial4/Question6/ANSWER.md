Program A:
ERROR because both functions have a main function. In C, functions are strong symbols. The linker rule states that multiple strong symbols with the same name result in a link-time error.

Program B:
