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

void k_264(void *x_311)
{
  ty_int_ptr x_55 = (ty_int_ptr)((ty_int_ptr)x_311)[2];
  ty_int_ptr env_436 = (ty_int_ptr)((ty_int_ptr)x_311)[1];
  ty_int_ptr k_21 = (ty_int_ptr)((ty_int_ptr)env_436)[1];
  ty_int_ptr x_58 = (ty_int_ptr)1;
  ty_int_ptr k_266 = (ty_int_ptr)((ty_int_ptr)k_21)[1];
  ty_int_ptr env_443 = (ty_int_ptr)((ty_int_ptr)k_21)[2];

    ty_int_ptr x_312 = allocTuple(2);
  x_312[(int)2] = (int)x_58;
  x_312[(int)1] = (int)env_443;

  ((ty_fun_ptr)k_266) (x_312);
  
}


void k_261(void *x_313)
{
  ty_int_ptr x_54 = (ty_int_ptr)((ty_int_ptr)x_313)[2];
  ty_int_ptr env_437 = (ty_int_ptr)((ty_int_ptr)x_313)[1];
  ty_int_ptr k_21 = (ty_int_ptr)((ty_int_ptr)env_437)[1];
  ty_int_ptr x_57 = (ty_int_ptr)0;
  ty_int_ptr k_263 = (ty_int_ptr)((ty_int_ptr)k_21)[1];
  ty_int_ptr env_441 = (ty_int_ptr)((ty_int_ptr)k_21)[2];

    ty_int_ptr x_314 = allocTuple(2);
  x_314[(int)2] = (int)x_57;
  x_314[(int)1] = (int)env_441;

  ((ty_fun_ptr)k_263) (x_314);
  
}


void k_260(void *x_315)
{
  ty_int_ptr x_53 = (ty_int_ptr)((ty_int_ptr)x_315)[2];
  ty_int_ptr env_438 = (ty_int_ptr)((ty_int_ptr)x_315)[1];

  
  ml_exit (x_53);
  
}


void ml_main()
{
  ty_int_ptr x_56 = (ty_int_ptr)2;
  ty_int_ptr env_439 = allocTuple(0);
  ty_int_ptr k_21 = allocTuple(2);
  k_21[(int)1] = (int)k_260;
  k_21[(int)2] = (int)env_439;
  ty_int_ptr env_440 = allocTuple(1);
  env_440[(int)1] = (int)k_21;
  ty_int_ptr k_22 = allocTuple(2);
  k_22[(int)1] = (int)k_261;
  k_22[(int)2] = (int)env_440;
  ty_int_ptr env_442 = allocTuple(1);
  env_442[(int)1] = (int)k_21;
  ty_int_ptr k_23 = allocTuple(2);
  k_23[(int)1] = (int)k_264;
  k_23[(int)2] = (int)env_442;
  ty_int_ptr x_310 = 0;
  ty_int_ptr k_268 = (ty_int_ptr)((ty_int_ptr)k_22)[1];
  ty_int_ptr env_444 = (ty_int_ptr)((ty_int_ptr)k_22)[2];
  ty_int_ptr k_270 = (ty_int_ptr)((ty_int_ptr)k_23)[1];
  ty_int_ptr env_445 = (ty_int_ptr)((ty_int_ptr)k_23)[2];

  
  if( (int)x_56 ==0 )
  {  ty_int_ptr x_316 = allocTuple(2);
  x_316[(int)2] = (int)x_310;
  x_316[(int)1] = (int)env_444;

  ((ty_fun_ptr)k_268) (x_316);
  
  } else {
  ty_int_ptr x_317 = allocTuple(2);
  x_317[(int)2] = (int)x_310;
  x_317[(int)1] = (int)env_445;

  ((ty_fun_ptr)k_270) (x_317);
  
  }
  
}

int main ()
{
  ml_main ();
  return 0;
}

