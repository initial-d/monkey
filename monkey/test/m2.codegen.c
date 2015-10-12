// Compiler auto-generated.

#include <stdio.h>
#include <stdlib.h>
#include "runtime.h"

typedef void (*ty_fun_ptr)();
typedef int *ty_int_ptr;
void ml_exit (void *x)
{
	printf("%s  %s", (void*)((int*)x)[1], (void*)((int*)x)[2]);
  exit (0);
}

void k_243(void *x_283)
{
  ty_int_ptr x1 = (ty_int_ptr)((ty_int_ptr)x_283)[2];
  ty_int_ptr env_398 = (ty_int_ptr)((ty_int_ptr)x_283)[1];
  ty_int_ptr k_12 = (ty_int_ptr)((ty_int_ptr)env_398)[1];
  ty_int_ptr x_36 = (ty_int_ptr)"B";
  ty_int_ptr x_37 = (ty_int_ptr)"BB";
  ty_int_ptr x_38 = allocTuple(2);
  x_38[(int)1] = (int)x_36;
  x_38[(int)2] = (int)x_37;
  ty_int_ptr k_245 = (ty_int_ptr)((ty_int_ptr)k_12)[1];
  ty_int_ptr env_405 = (ty_int_ptr)((ty_int_ptr)k_12)[2];

    ty_int_ptr x_284 = allocTuple(2);
  x_284[(int)2] = (int)x_38;
  x_284[(int)1] = (int)env_405;

  ((ty_fun_ptr)k_245) (x_284);
  
}


void k_240(void *x_285)
{
  ty_int_ptr x = (ty_int_ptr)((ty_int_ptr)x_285)[2];
  ty_int_ptr env_399 = (ty_int_ptr)((ty_int_ptr)x_285)[1];
  ty_int_ptr k_12 = (ty_int_ptr)((ty_int_ptr)env_399)[1];
  ty_int_ptr x_33 = (ty_int_ptr)"A";
  ty_int_ptr x_34 = (ty_int_ptr)"AA";
  ty_int_ptr x_35 = allocTuple(2);
  x_35[(int)1] = (int)x_33;
  x_35[(int)2] = (int)x_34;
  ty_int_ptr k_242 = (ty_int_ptr)((ty_int_ptr)k_12)[1];
  ty_int_ptr env_403 = (ty_int_ptr)((ty_int_ptr)k_12)[2];

    ty_int_ptr x_286 = allocTuple(2);
  x_286[(int)2] = (int)x_35;
  x_286[(int)1] = (int)env_403;

  ((ty_fun_ptr)k_242) (x_286);
  
}


void k_239(void *x_287)
{
  ty_int_ptr x_30 = (ty_int_ptr)((ty_int_ptr)x_287)[2];
  ty_int_ptr env_400 = (ty_int_ptr)((ty_int_ptr)x_287)[1];

  
  ml_exit (x_30);
  
}


void ml_main()
{
  ty_int_ptr x_31 = (ty_int_ptr)"z";
  ty_int_ptr x_32 = allocTag(1);
  x_32[(int)1] = (int)x_31;
  ty_int_ptr env_401 = allocTuple(0);
  ty_int_ptr k_12 = allocTuple(2);
  k_12[(int)1] = (int)k_239;
  k_12[(int)2] = (int)env_401;
  ty_int_ptr env_402 = allocTuple(1);
  env_402[(int)1] = (int)k_12;
  ty_int_ptr k_13 = allocTuple(2);
  k_13[(int)1] = (int)k_240;
  k_13[(int)2] = (int)env_402;
  ty_int_ptr env_404 = allocTuple(1);
  env_404[(int)1] = (int)k_12;
  ty_int_ptr k_14 = allocTuple(2);
  k_14[(int)1] = (int)k_243;
  k_14[(int)2] = (int)env_404;
  ty_int_ptr k_247 = (ty_int_ptr)((ty_int_ptr)k_13)[1];
  ty_int_ptr env_406 = (ty_int_ptr)((ty_int_ptr)k_13)[2];
  ty_int_ptr k_249 = (ty_int_ptr)((ty_int_ptr)k_14)[1];
  ty_int_ptr env_407 = (ty_int_ptr)((ty_int_ptr)k_14)[2];

  
  void* x_281 = (void*)((int*)x_32)[1];
  void* x_282 = (void*)((int*)x_32)[1];
  switch (((int*)x_32)[0] )
  {
  case 1 : 
{  ty_int_ptr x_288 = allocTuple(2);
  x_288[(int)2] = (int)x_281;
  x_288[(int)1] = (int)env_406;

  ((ty_fun_ptr)k_247) (x_288);
   break ;}
  case 2 : 
{  ty_int_ptr x_289 = allocTuple(2);
  x_289[(int)2] = (int)x_282;
  x_289[(int)1] = (int)env_407;

  ((ty_fun_ptr)k_249) (x_289);
   break ;}
  }
  
}

int main ()
{
  ml_main ();
  return 0;
}

