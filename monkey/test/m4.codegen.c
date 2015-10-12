// Compiler auto-generated.

#include <stdio.h>
#include <stdlib.h>
#include "runtime.h"

typedef void (*ty_fun_ptr)();
void ml_exit (void *x)
{
  exit (0);
}

void x_20(void *x_21)
{
  int * y = (int*)((int*)x_21)[3];
  int * k_7 = (int*)((int*)x_21)[2];
  int * env_27 = (int*)((int*)x_21)[1];
  int * x = (int*)((int*)env_27)[1];
  int * k_17 = (int*)((int*)k_7)[1];
  int * env_32 = (int*)((int*)k_7)[2];

    int * x_22 = allocTuple(2);
  x_22[(int)2] = (int)x;
  x_22[(int)1] = (int)env_32;

  ((ty_fun_ptr)k_17) (x_22);
  
}


void x_19(void *x_23)
{
  int * x = (int*)((int*)x_23)[3];
  int * k_6 = (int*)((int*)x_23)[2];
  int * env_29 = (int*)((int*)x_23)[1];
  int * env_31 = allocTuple(1);
  env_31[(int)1] = (int)x;
  int * x_14 = allocTuple(2);
  x_14[(int)1] = (int)x_20;
  x_14[(int)2] = (int)env_31;
  int * k_19 = (int*)((int*)k_6)[1];
  int * env_33 = (int*)((int*)k_6)[2];

    int * x_24 = allocTuple(2);
  x_24[(int)2] = (int)x_14;
  x_24[(int)1] = (int)env_33;

  ((ty_fun_ptr)k_19) (x_24);
  
}


void ml_main()
{
  int * env_30 = allocTuple(0);
  int * x_13 = allocTuple(2);
  x_13[(int)1] = (int)x_19;
  x_13[(int)2] = (int)env_30;

  
  ml_exit (x_13);
  
}

int main ()
{
  ml_main ();
  return 0;
}

