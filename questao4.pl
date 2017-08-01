animal(joao, passaro).
animal(pedro, peixe).
animal(maria, minhoca).
animal(miau, gato).
animal(eu, pessoa).

verifica_gosto(passaro,minhoca).
verifica_gosto(gato, peixe).
verifica_gosto(gato, passaro).


gosta(Nome1, Nome2) :- animal(Nome1,Animal1), animal(Nome2, Animal2) Animal1 =:= gato, Animal2 =\= pessoa.
gosta(Nome1,Nome2) :- animal(Nome1,Animal1), animal(Nome2, Animal2), verifica_gosto(Animal1, Animal2).



amigo(Nome1, Nome2).


come(Nome1, Nome2) :- gosta(Nome1, Nome2).
come(Nome1, Nome2) :- amigo(Nome1, Nome2).
