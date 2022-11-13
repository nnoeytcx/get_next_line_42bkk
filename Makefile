# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tpoungla <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/13 17:43:32 by tpoungla          #+#    #+#              #
#    Updated: 2022/11/13 17:43:32 by tpoungla         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = .a

FLAGS = -Wall  -Wextra -Werror

SRCS = 

OBJS := $(SRCS:.c=.o)

all: $(NAME)

.c.o:
	gcc $(FLAGS) -c $< -o $(<:.c=.o)

$(NAME): $(OBJS)
	ar -rcs $(NAME) $(OBJS)

clean:
	rm -f $(OBJS)
fclean:
	rm -f $(NAME)
re: fclean all