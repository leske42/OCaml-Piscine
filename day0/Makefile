NAME = a.out

ex00:
	ocamlopt ex00/ft_test_sign.ml -o $(NAME)

ex01:
	ocamlopt ex01/ft_countdown.ml -o $(NAME)

ex02:
	ocamlopt ex02/ft_power.ml -o $(NAME)

all:
	ocamlopt $(NAME).ml -o $(NAME)

clean:
	rm -f */*.o */*.cmx */*.cmi */*out

fclean: clean
	rm $(NAME)

.PHONY: ex00 ex01 ex02