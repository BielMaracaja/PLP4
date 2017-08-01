reinou(rhodi, 884, 878).
reinou(anarawd, 878, 916).
reinou(hywel_dda, 916, 950).
reinou(lago_ap_idwal, 950, 979).
reinou(hywal_ap_Ieuaf, 979, 965).
reinou(cadwallon, 985, 986).
reinou(maredudd, 986, 999).

reinado(R, X) :- reinou(R, V, W), X >= V, X =< W. 

:- initialization(main).

main:-
	repeat,
	read(X),
	reinado(R,X),
	write(R),nl,
	halt(0).

