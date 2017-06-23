TARGET = a
#
CC = gcc
CC_FLAG = -std=c11 -Wall
DEBUG ?= 
RM = rm
RM_FLAG = -rf
# Basic directories
SRC = src
BIN = bin

# Objects
OBJ = c_erialize main

#---------------------------------------------------------------------------
all: clean config-xml test

config-xml: $(SRC)/c_erialize.c
	$(CC) $(CC_FLAG) $(DEBUG) -DMXL=1	-c $(SRC)/c_erialize.c 	-o $(BIN)/c_erialize.o

config-bin: $(SRC)/c_erialize.c
	$(CC) $(CC_FLAG) $(DEBUG) -DMXL=2	-c $(SRC)/c_erialize.c 	-o $(BIN)/c_erialize.o

test: $(SRC)/main.c
	$(CC) $(CC_FLAG) $(DEBUG)	-c $(SRC)/main.c 	-o $(BIN)/main.o
	$(CC) $(CC_FLAG) $(addprefix $(BIN)/, $(addsuffix .o, $(OBJ) )) 	-o $(TARGET).out

clean:
	$(RM) $(RM_FLAG) $(BIN)/*
	$(RM) $(RM_FLAG) $(SRC)/*.gch
	$(RM) $(RM_FLAG) $(TARGET).out
