#include "c_erialize.h"

extern void read(void *s, FILE *f){
  char type[5];
  int i = 0;
  if(XML == 1){
    fscanf("{");
    fscang("\t\"");
    printf("{");
    while(type[0] != '}'){
      fscanf("%c", &type[i])
      while((type[i] != '\"') && (i < 5)){
        ++i;
        fscanf("%c", &type[i]);
      }
      printf("\t%s", type);
      fscang("\t\"");
    }
    printf("}");
    // Use the fscanf and fprintf functions
/*      if(strcmp(type, INT) == 0){
        printf("INT, porra!");
      }else if(strcmp(type, FLOAT) == 0){
        printf("FLOAT, porra!");
      }
*/
  }else{

  }
}

extern void write(void *s, char *structDes, FILE *f){
  char a;
  if(XML == 1){
    for(int c = 0; a != '\0' ; a = structDes[c], c++){

    }
  }else{

  }
}
