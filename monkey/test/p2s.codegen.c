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

void k_209(void *x_250)
{
  ty_int_ptr x_4 = (ty_int_ptr)((ty_int_ptr)x_250)[2];
  ty_int_ptr env_344 = (ty_int_ptr)((ty_int_ptr)x_250)[1];
  ty_int_ptr k_1 = (ty_int_ptr)((ty_int_ptr)env_344)[1];
  ty_int_ptr x = (ty_int_ptr)((ty_int_ptr)env_344)[2];
  ty_int_ptr x_7 = (ty_int_ptr)((int)x + (int)x_4);
  ty_int_ptr k_211 = (ty_int_ptr)((ty_int_ptr)k_1)[1];
  ty_int_ptr env_360 = (ty_int_ptr)((ty_int_ptr)k_1)[2];

    ty_int_ptr x_251 = allocTuple(2);
  x_251[(int)2] = (int)x_7;
  x_251[(int)1] = (int)env_360;

  ((ty_fun_ptr)k_211) (x_251);
  
}


void k_208(void *x_252)
{
  ty_int_ptr x_2 = (ty_int_ptr)((ty_int_ptr)x_252)[2];
  ty_int_ptr env_347 = (ty_int_ptr)((ty_int_ptr)x_252)[1];
  ty_int_ptr f = (ty_int_ptr)((ty_int_ptr)env_347)[1];
  ty_int_ptr k_1 = (ty_int_ptr)((ty_int_ptr)env_347)[2];
  ty_int_ptr x = (ty_int_ptr)((ty_int_ptr)env_347)[3];
  ty_int_ptr x_5 = (ty_int_ptr)1;
  ty_int_ptr x_6 = (ty_int_ptr)((int)x - (int)x_5);
  ty_int_ptr env_359 = allocTuple(2);
  env_359[(int)1] = (int)k_1;
  env_359[(int)2] = (int)x;
  ty_int_ptr k_4 = allocTuple(2);
  k_4[(int)1] = (int)k_209;
  k_4[(int)2] = (int)env_359;
  ty_int_ptr x_247 = (ty_int_ptr)((ty_int_ptr)f)[1];
  ty_int_ptr env_361 = (ty_int_ptr)((ty_int_ptr)f)[2];

    ty_int_ptr x_253 = allocTuple(3);
  x_253[(int)3] = (int)x_6;
  x_253[(int)2] = (int)k_4;
  x_253[(int)1] = (int)env_361;

  ((ty_fun_ptr)x_247) (x_253);
  
}


void k_205(void *x_254)
{
  ty_int_ptr x_1 = (ty_int_ptr)((ty_int_ptr)x_254)[2];
  ty_int_ptr env_348 = (ty_int_ptr)((ty_int_ptr)x_254)[1];
  ty_int_ptr k_1 = (ty_int_ptr)((ty_int_ptr)env_348)[1];
  ty_int_ptr x_3 = (ty_int_ptr)0;
  ty_int_ptr k_207 = (ty_int_ptr)((ty_int_ptr)k_1)[1];
  ty_int_ptr env_357 = (ty_int_ptr)((ty_int_ptr)k_1)[2];

    ty_int_ptr x_255 = allocTuple(2);
  x_255[(int)2] = (int)x_3;
  x_255[(int)1] = (int)env_357;

  ((ty_fun_ptr)k_207) (x_255);
  
}


void k_202(void *x_256)
{
  ty_int_ptr x_0 = (ty_int_ptr)((ty_int_ptr)x_256)[2];
  ty_int_ptr env_349 = (ty_int_ptr)((ty_int_ptr)x_256)[1];
  ty_int_ptr k_0 = (ty_int_ptr)((ty_int_ptr)env_349)[1];
  ty_int_ptr k_204 = (ty_int_ptr)((ty_int_ptr)k_0)[1];
  ty_int_ptr env_355 = (ty_int_ptr)((ty_int_ptr)k_0)[2];

    ty_int_ptr x_257 = allocTuple(2);
  x_257[(int)2] = (int)x_0;
  x_257[(int)1] = (int)env_355;

  ((ty_fun_ptr)k_204) (x_257);
  
}


void k_216(void *x_258)
{
  ty_int_ptr x_8 = (ty_int_ptr)((ty_int_ptr)x_258)[2];
  ty_int_ptr env_351 = (ty_int_ptr)((ty_int_ptr)x_258)[1];
  ty_int_ptr x_10 = ml_int2string ((int)x_8);
  ty_int_ptr x_11 = ml_print ((const char*)x_10);

  
  ml_exit (x_11);
  
}


void x_245(void *x_259)
{
  ty_int_ptr x = (ty_int_ptr)((ty_int_ptr)x_259)[3];
  ty_int_ptr k_0 = (ty_int_ptr)((ty_int_ptr)x_259)[2];
  ty_int_ptr env_352 = (ty_int_ptr)((ty_int_ptr)x_259)[1];
  ty_int_ptr f = allocTuple(2);
  f[(int)1] = (int)x_245;
  f[(int)2] = (int)env_352;
  ty_int_ptr env_354 = allocTuple(1);
  env_354[(int)1] = (int)k_0;
  ty_int_ptr k_1 = allocTuple(2);
  k_1[(int)1] = (int)k_202;
  k_1[(int)2] = (int)env_354;
  ty_int_ptr env_356 = allocTuple(1);
  env_356[(int)1] = (int)k_1;
  ty_int_ptr k_2 = allocTuple(2);
  k_2[(int)1] = (int)k_205;
  k_2[(int)2] = (int)env_356;
  ty_int_ptr env_358 = allocTuple(3);
  env_358[(int)1] = (int)f;
  env_358[(int)2] = (int)k_1;
  env_358[(int)3] = (int)x;
  ty_int_ptr k_3 = allocTuple(2);
  k_3[(int)1] = (int)k_208;
  k_3[(int)2] = (int)env_358;
  ty_int_ptr x_244 = 0;
  ty_int_ptr k_213 = (ty_int_ptr)((ty_int_ptr)k_2)[1];
  ty_int_ptr env_362 = (ty_int_ptr)((ty_int_ptr)k_2)[2];
  ty_int_ptr k_215 = (ty_int_ptr)((ty_int_ptr)k_3)[1];
  ty_int_ptr env_363 = (ty_int_ptr)((ty_int_ptr)k_3)[2];

  
  if( (int)x ==0 )
  {  ty_int_ptr x_260 = allocTuple(2);
  x_260[(int)2] = (int)x_244;
  x_260[(int)1] = (int)env_362;

  ((ty_fun_ptr)k_213) (x_260);
  
  } else {
  ty_int_ptr x_261 = allocTuple(2);
  x_261[(int)2] = (int)x_244;
  x_261[(int)1] = (int)env_363;

  ((ty_fun_ptr)k_215) (x_261);
  
  }
  
}


void ml_main()
{
  ty_int_ptr env_353 = allocTuple(0);
  ty_int_ptr f = allocTuple(2);
  f[(int)1] = (int)x_245;
  f[(int)2] = (int)env_353;
  ty_int_ptr x_9 = (ty_int_ptr)100;
  ty_int_ptr env_364 = allocTuple(0);
  ty_int_ptr k_5 = allocTuple(2);
  k_5[(int)1] = (int)k_216;
  k_5[(int)2] = (int)env_364;
  ty_int_ptr x_249 = (ty_int_ptr)((ty_int_ptr)f)[1];
  ty_int_ptr env_365 = (ty_int_ptr)((ty_int_ptr)f)[2];

    ty_int_ptr x_262 = allocTuple(3);
  x_262[(int)3] = (int)x_9;
  x_262[(int)2] = (int)k_5;
  x_262[(int)1] = (int)env_365;

  ((ty_fun_ptr)x_249) (x_262);
  
}

int main ()
{
  ml_main ();
  return 0;
}

