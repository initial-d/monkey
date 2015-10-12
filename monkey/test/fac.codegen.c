// Compiler auto-generated.

#include <stdio.h>
#include <stdlib.h>
#include "runtime.h"

typedef void (*ty_fun_ptr)();
typedef int *ty_int_ptr;
void ml_exit (void *x)
{
	printf("%d\n",(int)x);
  exit (0);
}

void k_194(void *x_231)
{
  ty_int_ptr x_125 = (ty_int_ptr)((ty_int_ptr)x_231)[2];
  ty_int_ptr env_318 = (ty_int_ptr)((ty_int_ptr)x_231)[1];
  ty_int_ptr k_73 = (ty_int_ptr)((ty_int_ptr)env_318)[1];
  ty_int_ptr x = (ty_int_ptr)((ty_int_ptr)env_318)[2];
  ty_int_ptr x_128 = (ty_int_ptr)((int)x + (int)x_125);
  ty_int_ptr k_196 = (ty_int_ptr)((ty_int_ptr)k_73)[1];
  ty_int_ptr env_334 = (ty_int_ptr)((ty_int_ptr)k_73)[2];

    ty_int_ptr x_232 = allocTuple(2);
  x_232[(int)2] = (int)x_128;
  x_232[(int)1] = (int)env_334;

  ((ty_fun_ptr)k_196) (x_232);
  
}


void k_193(void *x_233)
{
  ty_int_ptr x_123 = (ty_int_ptr)((ty_int_ptr)x_233)[2];
  ty_int_ptr env_321 = (ty_int_ptr)((ty_int_ptr)x_233)[1];
  ty_int_ptr f = (ty_int_ptr)((ty_int_ptr)env_321)[1];
  ty_int_ptr k_73 = (ty_int_ptr)((ty_int_ptr)env_321)[2];
  ty_int_ptr x = (ty_int_ptr)((ty_int_ptr)env_321)[3];
  ty_int_ptr x_126 = (ty_int_ptr)1;
  ty_int_ptr x_127 = (ty_int_ptr)((int)x - (int)x_126);
  ty_int_ptr env_333 = allocTuple(2);
  env_333[(int)1] = (int)k_73;
  env_333[(int)2] = (int)x;
  ty_int_ptr k_76 = allocTuple(2);
  k_76[(int)1] = (int)k_194;
  k_76[(int)2] = (int)env_333;
  ty_int_ptr x_228 = (ty_int_ptr)((ty_int_ptr)f)[1];
  ty_int_ptr env_335 = (ty_int_ptr)((ty_int_ptr)f)[2];

    ty_int_ptr x_234 = allocTuple(3);
  x_234[(int)3] = (int)x_127;
  x_234[(int)2] = (int)k_76;
  x_234[(int)1] = (int)env_335;

  ((ty_fun_ptr)x_228) (x_234);
  
}


void k_190(void *x_235)
{
  ty_int_ptr x_122 = (ty_int_ptr)((ty_int_ptr)x_235)[2];
  ty_int_ptr env_322 = (ty_int_ptr)((ty_int_ptr)x_235)[1];
  ty_int_ptr k_73 = (ty_int_ptr)((ty_int_ptr)env_322)[1];
  ty_int_ptr x_124 = (ty_int_ptr)0;
  ty_int_ptr k_192 = (ty_int_ptr)((ty_int_ptr)k_73)[1];
  ty_int_ptr env_331 = (ty_int_ptr)((ty_int_ptr)k_73)[2];

    ty_int_ptr x_236 = allocTuple(2);
  x_236[(int)2] = (int)x_124;
  x_236[(int)1] = (int)env_331;

  ((ty_fun_ptr)k_192) (x_236);
  
}


void k_187(void *x_237)
{
  ty_int_ptr x_121 = (ty_int_ptr)((ty_int_ptr)x_237)[2];
  ty_int_ptr env_323 = (ty_int_ptr)((ty_int_ptr)x_237)[1];
  ty_int_ptr k_72 = (ty_int_ptr)((ty_int_ptr)env_323)[1];
  ty_int_ptr k_189 = (ty_int_ptr)((ty_int_ptr)k_72)[1];
  ty_int_ptr env_329 = (ty_int_ptr)((ty_int_ptr)k_72)[2];

    ty_int_ptr x_238 = allocTuple(2);
  x_238[(int)2] = (int)x_121;
  x_238[(int)1] = (int)env_329;

  ((ty_fun_ptr)k_189) (x_238);
  
}


void k_201(void *x_239)
{
  ty_int_ptr x_129 = (ty_int_ptr)((ty_int_ptr)x_239)[2];
  ty_int_ptr env_325 = (ty_int_ptr)((ty_int_ptr)x_239)[1];

  
  ml_exit (x_129);
  
}


void x_226(void *x_240)
{
  ty_int_ptr x = (ty_int_ptr)((ty_int_ptr)x_240)[3];
  ty_int_ptr k_72 = (ty_int_ptr)((ty_int_ptr)x_240)[2];
  ty_int_ptr env_326 = (ty_int_ptr)((ty_int_ptr)x_240)[1];
  ty_int_ptr f = allocTuple(2);
  f[(int)1] = (int)x_226;
  f[(int)2] = (int)env_326;
  ty_int_ptr env_328 = allocTuple(1);
  env_328[(int)1] = (int)k_72;
  ty_int_ptr k_73 = allocTuple(2);
  k_73[(int)1] = (int)k_187;
  k_73[(int)2] = (int)env_328;
  ty_int_ptr env_330 = allocTuple(1);
  env_330[(int)1] = (int)k_73;
  ty_int_ptr k_74 = allocTuple(2);
  k_74[(int)1] = (int)k_190;
  k_74[(int)2] = (int)env_330;
  ty_int_ptr env_332 = allocTuple(3);
  env_332[(int)1] = (int)f;
  env_332[(int)2] = (int)k_73;
  env_332[(int)3] = (int)x;
  ty_int_ptr k_75 = allocTuple(2);
  k_75[(int)1] = (int)k_193;
  k_75[(int)2] = (int)env_332;
  ty_int_ptr x_225 = 0;
  ty_int_ptr k_198 = (ty_int_ptr)((ty_int_ptr)k_74)[1];
  ty_int_ptr env_336 = (ty_int_ptr)((ty_int_ptr)k_74)[2];
  ty_int_ptr k_200 = (ty_int_ptr)((ty_int_ptr)k_75)[1];
  ty_int_ptr env_337 = (ty_int_ptr)((ty_int_ptr)k_75)[2];

  
  if( (int)x ==0 )
  {  ty_int_ptr x_241 = allocTuple(2);
  x_241[(int)2] = (int)x_225;
  x_241[(int)1] = (int)env_336;

  ((ty_fun_ptr)k_198) (x_241);
  
  } else {
  ty_int_ptr x_242 = allocTuple(2);
  x_242[(int)2] = (int)x_225;
  x_242[(int)1] = (int)env_337;

  ((ty_fun_ptr)k_200) (x_242);
  
  }
  
}


void ml_main()
{
  ty_int_ptr env_327 = allocTuple(0);
  ty_int_ptr f = allocTuple(2);
  f[(int)1] = (int)x_226;
  f[(int)2] = (int)env_327;
  ty_int_ptr x_130 = (ty_int_ptr)100;
  ty_int_ptr env_338 = allocTuple(0);
  ty_int_ptr k_77 = allocTuple(2);
  k_77[(int)1] = (int)k_201;
  k_77[(int)2] = (int)env_338;
  ty_int_ptr x_230 = (ty_int_ptr)((ty_int_ptr)f)[1];
  ty_int_ptr env_339 = (ty_int_ptr)((ty_int_ptr)f)[2];

    ty_int_ptr x_243 = allocTuple(3);
  x_243[(int)3] = (int)x_130;
  x_243[(int)2] = (int)k_77;
  x_243[(int)1] = (int)env_339;

  ((ty_fun_ptr)x_230) (x_243);
  
}

int main ()
{
  ml_main ();
  return 0;
}

