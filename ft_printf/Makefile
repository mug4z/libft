SRC = ft_printf.c ft_convert_hex.c ft_char_convertion.c ft_digit_convertion.c
OBJ = $(patsubst %.c,%.o,$(SRC))


NAME = libftprintf.a
CC = gcc
CFLAGS = -Wall -Werror -Wextra
LIBFILE = libftprintf.a
RM = /bin/rm -rf

.PHONY: all clean fclean re

all: $(NAME)

$(NAME): $(OBJ)
	ar -rsc $(LIBFILE) $(OBJ)
clean:
	$(RM) $(wildcard $(OBJ))
fclean: clean
	$(RM) $(LIBFILE)
re: fclean all