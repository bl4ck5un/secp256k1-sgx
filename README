A port of Bitcoin's secp256k1 to the Intel SGX environment
==========================================================

Prerequisite
------------

Assuming `printf_std` is defined somewhere as, e.g., the following

```
#include <stdio.h>

int printf_std(const char *fmt, ...) {
  int ret;
  va_list ap;
  char buf[BUFSIZ] = {'\0'};
  va_start(ap, fmt);
  vsnprintf(buf, BUFSIZ, fmt, ap);
  va_end(ap);
  ocall_print_to_std(&ret, buf);
  return ret;
}
```


Usage
-----

```
./codegen.sh
```
