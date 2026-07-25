NAME = a.out

ex00:
	ocamlopt ex00/encode.ml -o $(NAME)

ex01:
	ocamlopt ex01/crossover.ml -o $(NAME)

ex02:
	ocamlopt ex02/gray.ml -o $(NAME)

ex03:
	ocamlopt ex03/sequence.ml -o $(NAME)

ex04:
	ocamlopt ex04/nucleotides.ml -o $(NAME)

all:
	ocamlopt $(NAME).ml -o $(NAME)

clean:
	rm -f */*.o */*.cmx */*.cmi */*out

fclean: clean
	rm $(NAME)

.PHONY: ex00 ex01 ex02 ex03 ex04