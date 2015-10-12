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

void x_300(void *x_301)
{
  ty_int_ptr x = (ty_int_ptr)((ty_int_ptr)x_301)[3];
  ty_int_ptr k_18 = (ty_int_ptr)((ty_int_ptr)x_301)[2];
  ty_int_ptr env_421 = (ty_int_ptr)((ty_int_ptr)x_301)[1];
  ty_int_ptr k_256 = (ty_int_ptr)((ty_int_ptr)k_18)[1];
  ty_int_ptr env_423 = (ty_int_ptr)((ty_int_ptr)k_18)[2];

    ty_int_ptr x_302 = allocTuple(2);
  x_302[(int)2] = (int)x;
  x_302[(int)1] = (int)env_423;

  ((ty_fun_ptr)k_256) (x_302);
  
}


void ml_main()
{
  ty_int_ptr env_422 = allocTuple(0);
  ty_int_ptr x_49 = allocTuple(2);
  x_49[(int)1] = (int)x_300;
  x_49[(int)2] = (int)env_422;

  
  ml_exit (x_49);
  
}

int main ()
{
  ml_main ();
  return 0;
}

