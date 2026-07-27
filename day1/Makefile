NAME = a.out

ex00:
	ocamlopt ex00/repeat_x.ml -o $(NAME)

ex01:
	ocamlopt ex01/repeat_string.ml -o $(NAME)

ex02:
	ocamlopt ex02/ackermann.ml -o $(NAME)

ex03:
	ocamlopt ex03/tak.ml -o $(NAME)

ex04:
	ocamlopt ex04/fibonacci.ml -o $(NAME)

ex05:
	ocamlopt ex05/hofstadter_mf.ml -o $(NAME)

ex06:
	ocamlopt ex06/iter.ml -o $(NAME)

ex07:
	ocamlopt ex07/converges.ml -o $(NAME)

ex08:
	ocamlopt ex08/ft_sum.ml -o $(NAME)

ex09:
	ocamlopt ex09/leibniz_pi.ml -o $(NAME)

all:
	ocamlopt $(NAME).ml -o $(NAME)

clean:
	rm -f */*.o */*.cmx */*.cmi */*out

fclean: clean
	rm $(NAME)

.PHONY: ex00 ex01 ex02 ex03 ex04 ex05 ex06 ex07 ex08 ex09