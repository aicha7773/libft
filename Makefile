
NAME = libft.a

SRC =ft_atoi.c\
	ft_calloc.c\
	ft_isalpha.c\
	ft_isdigit.c\
	ft_memchr.c\
	ft_memcpy.c\
	ft_memset.c\
	ft_strdup.c\
	ft_strlcpy.c\
	ft_strncmp.c\
	ft_strrchr.c\
	ft_toupper.c\
	ft_bzero.c\
	ft_isalnum.c\
	ft_isascci.c\
	ft_isprint.c\
	ft_memcmp.c\
	ft_memmove.c\
	ft_strchr.c\
	ft_strlcat.c\
	ft_strlen.c\
	ft_strnstr.c\
	ft_tolower.c\
	ft_substr.c\
	ft_strtrim.c\
	ft_split.c\
	ft_strjoin.c\
	ft_itoa.c\
	ft_strmapi.c\
	ft_striteri.c\
	ft_putchar_fd.c\
	ft_putstr_fd.c\
	ft_putendl_fd.c\
	ft_putnbr_fd.c\
	ft_lstnew.c\
	ft_lstadd_front.c\
	ft_lstsize.c\
	ft_lstlast.c\
	ft_lstdelone.c\
	ft_lstclear.c\
	ft_lstiter.c\
	ft_lstadd_back.c\
	ft_lstmap.c
	
CFLAGS = -Wall -Werror -Wextra

CC = cc

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME):  $(OBJ)
	ar -rcs $(NAME) $(OBJ)

$(OBJ): $(SRC)
		$(CC) $(CFLAGS) -c $(SRC)
bonus:all

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all