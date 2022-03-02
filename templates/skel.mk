#  _  _ ___
# | || | __|   H
# | __ | _|    A
# |_||_|___|   P
#              

CC   = gcc
ARG  = -Wall
AARG = -c
OBJ  = .o
EXT  = .c
OUT  = a.out
NAME = main

$(OUT): $(NAME)$(OBJ) Makefile
	$(CC) $(ARG) $(NAME)$(OBJ) 

$(NAME)$(OBJ): $(NAME)$(EXT)
	$(CC) $(ARG) $(AARG) $(NAME)$(EXT) 

clean:
	touch *
	make 
	rm *$(OBJ)
