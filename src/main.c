#include <stdio.h>
#include "c_erialize.h"

int main(int argc, char **argv){
  FILE *test = NULL;
  if(argc == 2)
    test = fopen(argv[1], "r");
  else
    test = fopen("testCase/small.xml", "r");
  void *nothing;
  read(nothing, test); 
  return 0;
}
