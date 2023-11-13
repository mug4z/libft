# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tfrily <marvin@42lausanne.ch>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/10 13:19:16 by tfrily            #+#    #+#              #
#    Updated: 2023/11/10 10:27:16 by tfrily           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_isalnum.c  ft_isalpha.c ft_isdigit.c ft_isprint.c ft_isascii.c ft_strlen.c \
	  ft_memset.c ft_bzero.c ft_memcpy.c ft_calloc.c ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c \
	  ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c \
	  ft_atoi.c ft_strdup.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_substr.c ft_strjoin.c \
	  ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putnbr_fd.c 
BSRC = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c \
	   ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

BOBJ = $(patsubst %.c,%.o,$(BSRC))
OBJ = $(patsubst %.c,%.o,$(SRC))


NAME = libft.a
LIBNAME = ft
LIBPATH = .
LIBFILE = libft.a

CC = gcc
CFLAGS = -Wall -Werror -Wextra
RM = /bin/rm -rf


.PHONY: all clean fclean re bonus

all: $(NAME)

bonus:$(BOBJ)
	ar -rsc $(LIBFILE) $(BOBJ)

$(NAME): $(OBJ)
	ar -rsc $(LIBFILE) $(OBJ)
clean: 
	 $(RM) $(wildcard $(OBJ))
	 $(RM) $(wildcard $(BOBJ))
fclean: clean
	$(RM) $(NAME)
	$(RM) $(LIBFILE)
	$(RM) $(BOBJ)
re: fclean all