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

void x_290(void *x_291)
{
  ty_int_ptr x = (ty_int_ptr)((ty_int_ptr)x_291)[3];
  ty_int_ptr k_15 = (ty_int_ptr)((ty_int_ptr)x_291)[2];
  ty_int_ptr env_409 = (ty_int_ptr)((ty_int_ptr)x_291)[1];
  ty_int_ptr x_42 = (ty_int_ptr)99;
  ty_int_ptr k_251 = (ty_int_ptr)((ty_int_ptr)k_15)[1];
  ty_int_ptr env_411 = (ty_int_ptr)((ty_int_ptr)k_15)[2];

    ty_int_ptr x_292 = allocTuple(2);
  x_292[(int)2] = (int)x_42;
  x_292[(int)1] = (int)env_411;

  ((ty_fun_ptr)k_251) (x_292);
  
}


void ml_main()
{
  ty_int_ptr env_410 = allocTuple(0);
  ty_int_ptr x_41 = allocTuple(2);
  x_41[(int)1] = (int)x_290;
  x_41[(int)2] = (int)env_410;

  
  ml_exit (x_41);
  
}

int main ()
{
  ml_main ();
  return 0;
}

