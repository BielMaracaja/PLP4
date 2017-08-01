aluno(joao, 5.0, 7.0, 8.0).
aluno(maria, 6.0, 6.0, 6.0).
aluno(joana, 8.0, 5.1, 10).
aluno(mariana, 9.0, 9.0, 3.0).
aluno(cleuza, 8.5, 7.0, 8.6).
aluno(jose, 3.5, 3.0, 2.0).
aluno(mary, 10.0, 8.0, 7.0).


media(A, M) :- aluno(A, N1, N2, N3), M is ((N1 + N2 + N3) / 3).

vai_passando(A, S) :- media(A, M), M >= 7.0, M =< 10.0, S = "aprovado".

vai_passando(A, S) :- media(A, M), M >= 4.0, M < 7.0, S = "final".

vai_passando(A, S) :- media(A, M), M >= 0.0, M < 4.0, S = "reprovado".


:- initialization main.

main:-
	read(A),

	vai_passando(A, S),

	write(S),nl,

	halt(0).

