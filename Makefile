##
## EPITECH PROJECT, 2025
## make
## File description:
## make
##

NAME		=	asm
SRC		=	$(wildcard *.c)
SRC_NO_MAIN     =       $(filter-out main.c, $(SRC))
OBJ		=	$(SRC:.c=.o)
CC		=	gcc
RM		=	rm -f
LDFLAGS		=	-L. -lmy
BIN             =	unit_tests
TEST            =	tests/test_yml.c
export EXECUTABLES=$(NAME)

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) -o $(NAME) $(OBJ) -g3

unit_tests: $(TEST) $(SRC_NO_MAIN)
	$(CC) -o $(BIN) $(TEST) $(SRC_NO_MAIN) -lcriterion --coverage -lgcov

tests_run: unit_tests
	./unit_tests --verbose

clean:
	$(RM) $(OBJ)
	$(RM) *~
	$(RM) *#
	$(RM) *.gcno
	$(RM) *.gcda

print-exec:
	@echo $(NAME)

tests_clean:
	$(RM) *.gcda *.gcno unit_tests

fclean: clean
	$(RM) $(NAME)

re: fclean all
