// Compiler auto-generated.

#include <stdio.h>
#include <stdlib.h>
#include "runtime.h"

typedef void (*ty_fun_ptr)();
typedef int *ty_int_ptr;
void ml_exit (void *x)
{
  exit (0);
}

void ml_main()
{
  ty_int_ptr x_39 = (ty_int_ptr)"hello, world\n";
  ty_int_ptr x_40 = ml_print ((const char*)x_39);

  
  ml_exit (x_40);
  
}

int main ()
{
  ml_main ();
  return 0;
}

