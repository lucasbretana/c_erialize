#ifndef C_ERIALIZE_H
  #define C_ERIALIZE_H 1
  #include <stdio.h>
  #include <string.h>

  #define INT "int"
  #define FLOAT "float"
  #define DOUBLE "double"

  #ifndef XML
    #define XML 1
  #endif

  extern void write(void *, char *, FILE *);
  extern void read(void *, FILE *);
#endif
