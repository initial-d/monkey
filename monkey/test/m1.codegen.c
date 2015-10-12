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

void k_254(void *x_296)
{
  ty_int_ptr x_43 = (ty_int_ptr)((ty_int_ptr)x_296)[2];
  ty_int_ptr env_415 = (ty_int_ptr)((ty_int_ptr)x_296)[1];

  
  ml_exit (x_43);
  
}


void x_293(void *x_297)
{
  ty_int_ptr x = (ty_int_ptr)((ty_int_ptr)x_297)[3];
  ty_int_ptr k_17 = (ty_int_ptr)((ty_int_ptr)x_297)[2];
  ty_int_ptr env_413 = (ty_int_ptr)((ty_int_ptr)x_297)[1];
  ty_int_ptr x_45 = (ty_int_ptr)((ty_int_ptr)x)[1];
  ty_int_ptr k_253 = (ty_int_ptr)((ty_int_ptr)k_17)[1];
  ty_int_ptr env_417 = (ty_int_ptr)((ty_int_ptr)k_17)[2];

    ty_int_ptr x_298 = allocTuple(2);
  x_298[(int)2] = (int)x_45;
  x_298[(int)1] = (int)env_417;

  ((ty_fun_ptr)k_253) (x_298);
  
}


void ml_main()
{
  ty_int_ptr env_416 = allocTuple(0);
  ty_int_ptr x_44 = allocTuple(2);
  x_44[(int)1] = (int)x_293;
  x_44[(int)2] = (int)env_416;
  ty_int_ptr x_46 = (ty_int_ptr)"a";
  ty_int_ptr x_47 = (ty_int_ptr)"b";
  ty_int_ptr x_48 = allocTuple(2);
  x_48[(int)1] = (int)x_46;
  x_48[(int)2] = (int)x_47;
  ty_int_ptr env_418 = allocTuple(0);
  ty_int_ptr k_16 = allocTuple(2);
  k_16[(int)1] = (int)k_254;
  k_16[(int)2] = (int)env_418;
  ty_int_ptr x_295 = (ty_int_ptr)((ty_int_ptr)x_44)[1];
  ty_int_ptr env_419 = (ty_int_ptr)((ty_int_ptr)x_44)[2];

    ty_int_ptr x_299 = allocTuple(3);
  x_299[(int)3] = (int)x_48;
  x_299[(int)2] = (int)k_16;
  x_299[(int)1] = (int)env_419;

  ((ty_fun_ptr)x_295) (x_299);
  
}

int main ()
{
  ml_main ();
  return 0;
}

