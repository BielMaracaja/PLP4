
popula(brasil, 200).
popula(eua, 320).
popula(canada, 35).
popula(india, 1200).
popula(china, 1300).
popula(japao, 127).
popula(russia, 142).



territo(brasil, 8).
territo(eua, 9).
territo(canada, 9).
territo(india, 3).
territo(china, 9).
territo(japao, 1).
territo(russia, 17).



densidade(P, D) :- territo(P, T), popula(P, POP), D is POP / T.



maior_densidade(P1, P2, MAIOR) :- densidade(P1, D1), densidade(P2, D2), D1 >= D2, MAIOR = P1.
maior_densidade(P1, P2, MAIOR) :- densidade(P1, D1), densidade(P2, D2), D1 < D2, MAIOR = P2.



:- initialization main.



main :-
	read(P1),
	read(P2),
	maior_densidade(P1, P2, MAIOR),
	write(MAIOR),nl,
	halt(0).
