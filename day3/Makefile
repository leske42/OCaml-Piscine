NAME = a.out

ex00:
	ocamlopt -I ex00 ex00/Color.ml ex00/main.ml -o $(NAME)

ex01:
	ocamlopt -I ex01 ex01/Value.ml ex01/main.ml -o $(NAME)

ex02:
	ocamlopt -I ex02 ex02/Card.ml ex02/main.ml -o $(NAME)

ex03:
	ocamlopt -I ex03 ex03/Deck.ml ex03/main.ml -o $(NAME)

clean:
	rm -f */*.o */*.cmx */*.cmi */*out

fclean: clean
	rm $(NAME)

.PHONY: ex00 ex01 ex02 ex03 ex04 ex05