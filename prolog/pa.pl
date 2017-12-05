/*
	a) Considere a seguinte tabela de salários:
		* até 700,00 ------------------classe D
		de 701,00 até 3.500,00 --------classe C
		de 3.501,00 até 9.500,00 ------classe B
		acima de 9.500,00 -------------classe A
		Escreva um programa em PROLOG que receba o salário do usuário e informe sua classe salarial.
	Exemplo:
	?- informa_classe(1500, X).
		X = C.
*/


classeA(9500,1000000, a).
classeB(3501, 9500, b).
classeC(701, 3500, c).
classeD(0,700, d).

informa_classe(X, Y):-
	(classeA(W,Z,Y),X>W,X=<Z),!;
	(classeB(W,Z,Y),X>=W,X=<Z),!;
	(classeC(W,Z,Y),X>=W,X=<Z),!;
	(classeD(W,Z,Y),X>=W,X=<Z),!.
