%5 Predicados con menores, mayores.  Elegir.
%iguales ADICIONAL
iguales(A, A).
iguales(A, A, A).
iguales(A, A, A, A).
iguales(A, A, A, A, A).

%menor
menor(A,B,A) :- A < B, !.
menor(_,B,B).
menor(A, B, C, Me) :- menor(A, B, Me1), menor(C, Me1, Me).
menor(A, B, C, D, Me) :- menor(A, B, C, Me1), menor(D, Me1, Me).
menor(A, B, C, D, E, Me) :- menor(A, B, C, D, Me1), menor(E, Me1, Me).

%mayor
mayor(A,B,A) :- A > B, !.
mayor(_,B,B).
mayor(A, B, C, Me) :- mayor(A, B, Me1), mayor(C, Me1, Me).
mayor(A, B, C, D, Me) :- mayor(A, B, C, Me1), mayor(D, Me1, Me).
mayor(A, B, C, D, E, Me) :- mayor(A, B, C, D, Me1), mayor(E, Me1, Me).

%segMenor
segMenor(A, B, Me) :- mayor(A, B, Me).
segMenor(A, B, C, Me) :- menor(A, B, C, Me1), iguales(A, Me1), menor(B, C, Me), !.
segMenor(A, B, C, Me) :- menor(A, B, C, Me1), iguales(B, Me1), menor(A, C, Me), !.
segMenor(A, B, _, Me) :- menor(A, B, Me).
segMenor(A, B, C, D, Me) :- menor(A, B, C, D, Me1), iguales(A, Me1), menor(B, C, D, Me), !.
segMenor(A, B, C, D, Me) :- menor(A, B, C, D, Me1), iguales(B, Me1), menor(A, C, D, Me), !.
segMenor(A, B, C, D, Me) :- menor(A, B, C, D, Me1), iguales(C, Me1), menor(A, B, D, Me), !.
segMenor(A, B, C, _, Me) :- menor(A, B, C, Me).
segMenor(A, B, C, D, E, Me) :- menor(A, B, C, D, E, Me1), iguales(A, Me1), menor(B, C, D, E, Me), !.
segMenor(A, B, C, D, E, Me) :- menor(A, B, C, D, E, Me1), iguales(B, Me1), menor(A, C, D, E, Me), !.
segMenor(A, B, C, D, E, Me) :- menor(A, B, C, D, E, Me1), iguales(C, Me1), menor(A, B, D, E, Me), !.
segMenor(A, B, C, D, E, Me) :- menor(A, B, C, D, E, Me1), iguales(D, Me1), menor(A, B, C, E, Me), !.
segMenor(A, B, C, D, _, Me) :- menor(A, B, C, D, Me).

%segMayor
segMayor(A, B, My) :- menor(A, B, My).
segMayor(A, B, C, Me) :- mayor(A, B, C, Me1), iguales(A, Me1), mayor(B, C, Me), !.
segMayor(A, B, C, Me) :- mayor(A, B, C, Me1), iguales(B, Me1), mayor(A, C, Me), !.
segMayor(A, B, _, Me) :- mayor(A, B, Me).
segMayor(A, B, C, D, My) :- mayor(A, B, C, D, My1), iguales(A, My1), mayor(B, C, D, My), !.
segMayor(A, B, C, D, Me) :- mayor(A, B, C, D, Me1), iguales(B, Me1), mayor(A, C, D, Me), !.
segMayor(A, B, C, D, Me) :- mayor(A, B, C, D, Me1), iguales(C, Me1), mayor(A, B, D, Me), !.
segMayor(A, B, C, _, My) :- mayor(A, B, C, My).
segMayor(A, B, C, D, E, My) :- mayor(A, B, C, D, E, My1), iguales(A, My1), mayor(B, C, D, E, My), !.
segMayor(A, B, C, D, E, My) :- mayor(A, B, C, D, E, My1), iguales(B, My1), mayor(A, C, D, E, My), !.
segMayor(A, B, C, D, E, My) :- mayor(A, B, C, D, E, My1), iguales(C, My1), mayor(A, B, D, E, My), !.
segMayor(A, B, C, D, E, My) :- mayor(A, B, C, D, E, My1), iguales(D, My1), mayor(A, B, C, E, My), !.
segMayor(A, B, C, D, _, My) :- mayor(A, B, C, D, My).

%tercerMenor(A, B, C, Me)
tercerMenor(A, B, C, Me) :- menor(A, B, C, Me1), iguales(A, Me1), segMenor(B, C, Me), !.
tercerMenor(A, B, C, Me) :- menor(A, B, C, Me1), iguales(B, Me1), segMenor(A, C, Me), !.
tercerMenor(A, B, _, Me) :- segMenor(A, B, Me).
tercerMenor(A, B, C, D, Me) :- menor(A, B, C, D, Me1), iguales(A, Me1), segMenor(B, C, D, Me), !.
tercerMenor(A, B, C, D, Me) :- menor(A, B, C, D, Me1), iguales(B, Me1), segMenor(A, C, D, Me), !.
tercerMenor(A, B, C, D, Me) :- menor(A, B, C, D, Me1), iguales(C, Me1), segMenor(A, B, D, Me), !.
tercerMenor(A, B, C, _, Me) :- segMenor(A, B, C, Me).
tercerMenor(A, B, C, D, E, Me) :- menor(A, B, C, D, E, Me1), iguales(A, Me1), segMenor(B, C, D, E, Me), !.
tercerMenor(A, B, C, D, E, Me) :- menor(A, B, C, D, E, Me1), iguales(B, Me1), segMenor(A, C, D, E, Me), !.
tercerMenor(A, B, C, D, E, Me) :- menor(A, B, C, D, E, Me1), iguales(C, Me1), segMenor(A, B, D, E, Me), !.
tercerMenor(A, B, C, D, E, Me) :- menor(A, B, C, D, E, Me1), iguales(D, Me1), segMenor(B, C, A, E, Me), !.
tercerMenor(A, B, C, D, _, Me) :- segMenor(A, B, C, D, Me).

%tercerMayor
tercerMayor(A, B, C, Me) :- mayor(A, B, C, Me1), iguales(A, Me1), segMayor(B, C, Me), !.
tercerMayor(A, B, C, Me) :- mayor(A, B, C, Me1), iguales(B, Me1), segMayor(A, C, Me), !.
tercerMayor(A, B, _, Me) :- segMayor(A, B, Me).
tercerMayor(A, B, C, D, My) :- mayor(A, B, C, D, My1), iguales(A, My1), segMayor(B, C, D, My), !.
tercerMayor(A, B, C, D, My) :- mayor(A, B, C, D, My1), iguales(B, My1), segMayor(A, C, D, My), !.
tercerMayor(A, B, C, D, My) :- mayor(A, B, C, D, My1), iguales(C, My1), segMayor(A, B, D, My), !.
tercerMayor(A, B, C, _, My) :- segMayor(A, B, C, My).
tercerMayor(A, B, C, D, E, My) :- mayor(A, B, C, D, E, My1), iguales(A, My1), segMayor(B, C, D, E, My), !.
tercerMayor(A, B, C, D, E, My) :- mayor(A, B, C, D, E, My1), iguales(B, My1), segMayor(A, C, D, E, My), !.
tercerMayor(A, B, C, D, E, My) :- mayor(A, B, C, D, E, My1), iguales(C, My1), segMayor(A, B, D, E, My), !.
tercerMayor(A, B, C, D, E, My) :- mayor(A, B, C, D, E, My1), iguales(D, My1), segMayor(A, B, C, E, My), !.
tercerMayor(A, B, C, D, _, My) :- segMayor(A, B, C, D, My).


%5 Predicados Adicionales. Elegir.

%Adicional cuadrado(X1, Y1, X2, Y2, X3, Y3, X4, Y4):- Predicado que es true si las rectas forman un cuadrado
cuadrado(X1,Y1, X2,Y1, X1,Y2, X2,Y2):- abs(X1 - X2) =:= abs(Y1 - Y2).

%Predicado que es True si los puntos X1, Y1 y X2, Y2 forman una recta hacia arriba
arriba(X1, Y1, X2, Y2) :- X1 > X2, Y1 > Y2, !;
X2 > X1, Y2 > Y1.

%Predicado que es True si los puntos X1, Y1 y X2, Y2 forman una recta hacia abajo
abajo(X1, Y1, X2, Y2) :- X1 < X2, Y1 < Y2, !;
X2 < X1, Y2 < Y1.

%SumaEnteros
sumaPares(N,Sum):-
sumaPares(N,Sum,0).
sumaPares(N,Sum,Ac):-1>N,Sum is Ac,!.
sumaPares(N,Sum,Ac):-Ac1 is (Ac + (N*2)), N1 is N-1,
sumaPares(N1,Sum,Ac1).

%%sumaImpares
sumaImpares(N,Sum):-
sumaImpares(N,Sum,0).
sumaImpares(N,Sum,Ac):-1>N,Sum is Ac,!.
sumaImpares(N,Sum,Ac):-Ac1 is (Ac + ((N*2)-1)), N1 is N-1,
sumaImpares(N1,Sum,Ac1).


%5 Predicados sobre Plano Cartesiano.  Elegir.

lugar(0, 0, 0) :- !.
lugar(X, Y, L) :- X > 0, Y > 0, L is 1, !;
X < 0, Y > 0, L is 2, !;
X < 0, Y < 0, L is 3, !;
X > 0, Y < 0, L is 4, !.
lugar(_, 0, 5) :- !.
lugar(0, _, 6).

enEjeX(X, 0) :- X=\=0.

enEjeY(0, Y) :- Y=\=0.

distancia(X1, Y1, X2, Y2, Dist) :- Dist is sqrt((X2 - X1)**2 +
(Y2 - Y1)**2)

cartesiano.
lugarDif(X1, Y1, X2, Y2):-lugar(X1,Y1,R1),lugar(X2,Y2,R2),R1=\=R2.

lugar.
mismoLugar(X1, Y1, X2, Y2) :- lugar(X1, Y1, L), lugar(X2, Y2, L).

diferentes.
ejesDif(X1, Y1, X2, Y2) :- enEjeY(X1, Y1), enEjeX(X2, Y2), !.
ejesDif(X1, Y1, X2, Y2) :- enEjeY(X2, Y2), enEjeX(X1, Y1).

isoceles(A, A, B):- A=\=B,!.
isoceles(A, B, A):- A=\=B,!.
isoceles(A, B, B):- A=\=B.

equilatero(X1,Y1, X2,Y2, X3,Y3):- distancia(X1, Y1, X2, Y2, Dist),
distancia(X2, Y2, X3, Y3, Dist),
distancia(X3, Y3, X1, Y1, Dist).


%5 Predicados sobre Recursividad. Elegir.

sumaEnteros(N,Sum):- sumaEnteros(N,Sum,0).
sumaEnteros(N,Sum,Ac):- 1>N,Sum is Ac, !.
sumaEnteros(N,Sum,Ac):- Ac1 is (Ac + N) , N1 is N -1, sumaEnteros(N1,Sum,Ac1).

combi(N,N,1):-!.
combi(_,0,1):-!.
combi(N,R,NR):-N1 is (N-1), R1 is (R-1), combi(N1,R,N2), combi(N1,R1,N3), NR is N2+N3.

fibo(1,0):- !.
fibo(2,1):- !.
fibo(N,F):- N1 is N-1, N2 is N-2, fibo(N1,F1), fibo(N1,F2), F is F1+F2.

pot(_,0,1):- !.
pot(X,N,P):- N1 is (N-1), pot(N,N1,P1), P is (X*P1).

fact(0,1):- !.
fact(N,F):- N1 is (N-1), fact(N1,F1), F is (N*F1).

fact(1,0):- N1 is (N-2), pot(N,N1,P1), P is (X*P1, P2)

% Como pueden observar, este prooyecto es la impletmentacion de la libreria que nos
% permite interactuar directamente con la base de datos (MongoDB) para el uso de Datos
% a travez de una especie de JSON llamado BSON, que en resumen es JSOn pero para BD.