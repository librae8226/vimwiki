/**
  * @file		main.c
  * @brief
  * @author		yiran.liao@iessys.com
  * @version
  * @date
  */


/* Includes ------------------------------------------------------------------*/

#include <stdio.h>
#include <stdlib.h>

#include "main.h"
/*#include "solsmp_api.h"*/

/* Private defines -----------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

int main(int argc, char *argv[])
{
	int result = 0;
	char *ptr = NULL;

	printf("It works!\n");
/*	result = solsmp_initialize();*/
	result = TestApp(ptr);

	return 0;
}

