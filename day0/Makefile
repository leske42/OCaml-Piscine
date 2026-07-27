NAME = a.out

ex00:
	ocamlopt ex00/ft_test_sign.ml -o $(NAME)

ex01:
	ocamlopt ex01/ft_countdown.ml -o $(NAME)

ex02:
	ocamlopt ex02/ft_power.ml -o $(NAME)

ex03:
	ocamlopt ex03/ft_print_alphabet.ml -o $(NAME)

ex04:
	ocamlopt ex04/ft_print_comb.ml -o $(NAME)

ex05:
	ocamlopt ex05/ft_print_rev.ml -o $(NAME)

ex06:
	ocamlopt ex06/ft_string_all.ml -o $(NAME)

ex07:
	ocamlopt ex07/ft_is_palindrome.ml -o $(NAME)

ex08:
	ocamlopt ex08/ft_rot_n.ml -o $(NAME)

all:
	ocamlopt $(NAME).ml -o $(NAME)

clean:
	rm -f */*.o */*.cmx */*.cmi */*out

fclean: clean
	rm $(NAME)

.PHONY: ex00 ex01 ex02 ex03 ex04 ex05 ex06 ex07 ex08