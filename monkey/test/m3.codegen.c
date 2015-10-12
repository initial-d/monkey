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

void k_259(void *x_306)
{
  ty_int_ptr x_50 = (ty_int_ptr)((ty_int_ptr)x_306)[2];
  ty_int_ptr env_427 = (ty_int_ptr)((ty_int_ptr)x_306)[1];

  
  ml_exit (x_50);
  
}


void x_303(void *x_307)
{
  ty_int_ptr x = (ty_int_ptr)((ty_int_ptr)x_307)[3];
  ty_int_ptr k_20 = (ty_int_ptr)((ty_int_ptr)x_307)[2];
  ty_int_ptr env_425 = (ty_int_ptr)((ty_int_ptr)x_307)[1];
  ty_int_ptr k_258 = (ty_int_ptr)((ty_int_ptr)k_20)[1];
  ty_int_ptr env_429 = (ty_int_ptr)((ty_int_ptr)k_20)[2];

    ty_int_ptr x_308 = allocTuple(2);
  x_308[(int)2] = (int)x;
  x_308[(int)1] = (int)env_429;

  ((ty_fun_ptr)k_258) (x_308);
  
}


void ml_main()
{
  ty_int_ptr env_428 = allocTuple(0);
  ty_int_ptr x_51 = allocTuple(2);
  x_51[(int)1] = (int)x_303;
  x_51[(int)2] = (int)env_428;
  ty_int_ptr x_52 = (ty_int_ptr)"hello";
  ty_int_ptr env_430 = allocTuple(0);
  ty_int_ptr k_19 = allocTuple(2);
  k_19[(int)1] = (int)k_259;
  k_19[(int)2] = (int)env_430;
  ty_int_ptr x_305 = (ty_int_ptr)((ty_int_ptr)x_51)[1];
  ty_int_ptr env_431 = (ty_int_ptr)((ty_int_ptr)x_51)[2];

    ty_int_ptr x_309 = allocTuple(3);
  x_309[(int)3] = (int)x_52;
  x_309[(int)2] = (int)k_19;
  x_309[(int)1] = (int)env_431;

  ((ty_fun_ptr)x_305) (x_309);
  
}

int main ()
{
  ml_main ();
  return 0;
}

