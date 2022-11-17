#                     __
#    ____ ___  ____ _/ /_____
#   / __ `__ \/ __ `/ //_/ _ \
#  / / / / / / /_/ / ,< /  __/
# /_/ /_/ /_/\__,_/_/|_|\___/
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
