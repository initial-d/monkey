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

void k_221(void *x_265)
{
  ty_int_ptr x1 = (ty_int_ptr)((ty_int_ptr)x_265)[2];
  ty_int_ptr env_370 = (ty_int_ptr)((ty_int_ptr)x_265)[1];
  ty_int_ptr k_6 = (ty_int_ptr)((ty_int_ptr)env_370)[1];
  ty_int_ptr x_18 = (ty_int_ptr)"B";
  ty_int_ptr x_19 = (ty_int_ptr)"BB";
  ty_int_ptr x_20 = allocTuple(2);
  x_20[(int)1] = (int)x_18;
  x_20[(int)2] = (int)x_19;
  ty_int_ptr k_223 = (ty_int_ptr)((ty_int_ptr)k_6)[1];
  ty_int_ptr env_377 = (ty_int_ptr)((ty_int_ptr)k_6)[2];

    ty_int_ptr x_266 = allocTuple(2);
  x_266[(int)2] = (int)x_20;
  x_266[(int)1] = (int)env_377;

  ((ty_fun_ptr)k_223) (x_266);
  
}


void k_218(void *x_267)
{
  ty_int_ptr x = (ty_int_ptr)((ty_int_ptr)x_267)[2];
  ty_int_ptr env_371 = (ty_int_ptr)((ty_int_ptr)x_267)[1];
  ty_int_ptr k_6 = (ty_int_ptr)((ty_int_ptr)env_371)[1];
  ty_int_ptr x_15 = (ty_int_ptr)"A";
  ty_int_ptr x_16 = (ty_int_ptr)"AA";
  ty_int_ptr x_17 = allocTuple(2);
  x_17[(int)1] = (int)x_15;
  x_17[(int)2] = (int)x_16;
  ty_int_ptr k_220 = (ty_int_ptr)((ty_int_ptr)k_6)[1];
  ty_int_ptr env_375 = (ty_int_ptr)((ty_int_ptr)k_6)[2];

    ty_int_ptr x_268 = allocTuple(2);
  x_268[(int)2] = (int)x_17;
  x_268[(int)1] = (int)env_375;

  ((ty_fun_ptr)k_220) (x_268);
  
}


void k_217(void *x_269)
{
  ty_int_ptr x_12 = (ty_int_ptr)((ty_int_ptr)x_269)[2];
  ty_int_ptr env_372 = (ty_int_ptr)((ty_int_ptr)x_269)[1];

  
  ml_exit (x_12);
  
}


void ml_main()
{
  ty_int_ptr x_13 = (ty_int_ptr)"z";
  ty_int_ptr x_14 = allocTag(1);
  x_14[(int)1] = (int)x_13;
  ty_int_ptr env_373 = allocTuple(0);
  ty_int_ptr k_6 = allocTuple(2);
  k_6[(int)1] = (int)k_217;
  k_6[(int)2] = (int)env_373;
  ty_int_ptr env_374 = allocTuple(1);
  env_374[(int)1] = (int)k_6;
  ty_int_ptr k_7 = allocTuple(2);
  k_7[(int)1] = (int)k_218;
  k_7[(int)2] = (int)env_374;
  ty_int_ptr env_376 = allocTuple(1);
  env_376[(int)1] = (int)k_6;
  ty_int_ptr k_8 = allocTuple(2);
  k_8[(int)1] = (int)k_221;
  k_8[(int)2] = (int)env_376;
  ty_int_ptr k_225 = (ty_int_ptr)((ty_int_ptr)k_7)[1];
  ty_int_ptr env_378 = (ty_int_ptr)((ty_int_ptr)k_7)[2];
  ty_int_ptr k_227 = (ty_int_ptr)((ty_int_ptr)k_8)[1];
  ty_int_ptr env_379 = (ty_int_ptr)((ty_int_ptr)k_8)[2];

  void *x_263=(void *)((int *)x_14)[1];
  void *x_264=(void *)((int *)x_14)[1];
  switch (((int*)x_14)[0] )
  {
  case 1 :
  {ty_int_ptr x_270 = allocTuple(2);
		  x_270[(int)2] = (int)x_263;
  x_270[(int)1] = (int)env_378;

  ((ty_fun_ptr)k_225) (x_270);
  break ;}
  case 2 :
  {ty_int_ptr x_271 = allocTuple(2);
  x_271[(int)2] = (int)x_264;
  x_271[(int)1] = (int)env_379;

  ((ty_fun_ptr)k_227) (x_271);
  break ;}
}
  
}

int main ()
{
  ml_main ();
  return 0;
}

