TARGET = c_erialize
#
CC = gcc
CC_FLAG = -std=c11 -Wall
RM = rm
RM_FLAG = -rf
# Basic directories
SRC = src
BIN = bin

# Objects
OBJ = c_erialize main

#---------------------------------------------------------------------------
config-xml: $(SRC)/c_erialize.c
	$(CC) $(C_FLAG) -DMXL=1	-c $(SRC)/c_erialize.c 	-o $(BIN)/c_erialize.o

config-bin: $(SRC)/c_erialize.c
	$(CC) $(C_FLAG) -DMXL=2	-c $(SRC)/c_erialize.c 	-o $(BIN)/c_erialize.o

test: $(SRC)/main.c
	$(CC) $(C_FLAG) 	-c $(SRC)/main.c 	-o $(BIN)/main.o
	$(CC) $(C_FLAG) $(addprefix $(BIN)/, $(addsuffix .o, $(OBJ) )) 	-o $(TARGET).out

clean:
	$(RM) $(RM_FLAG) $(BIN)/*
	$(RM) $(RM_FLAG) $(TARGET).out
