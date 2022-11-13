hombre(cris).
hombre(daniel).
hombre(victor).
hombre(mario).
hombre(oscar).
hombre(kevin).
hombre(alfredo).
hombre(raul).

mujer(valeria).
mujer(diana).
mujer(nataly).
mujer(anny).
mujer(clara).
mujer(maria).
mujer(genesis).
mujer(liz).

matr(victor, nataly).
matr(cris, maria).
matr(alfredo, anny).
matr(oscar, valeria).
matr(raul, diana).

madre(nataly, diana).
madre(maria, kevin).
madre(anny, raul).
madre(valeria, clara).
madre(nataly, victor).
madre(anny, liz).
madre(genesis, nataly).

%--------------REGLAS--------
persona(X):-    hombre(X); mujer(X).
%-----------------------------------

abuela(X, Y):-  madre(X, W) , madre(Z, Y).

hermanos(X, Y):-    madre(Z, X), madre(Z, Y).

primosHermanos(X, Y):-  hermanos(Z, W), madre(Z, X), madre(W, Y).

bisabuela(X, Y):-   madre(X, W), madre(W, Z), madre(Z, Y).

sinHijos(X, Y):-    matr(X, Y), not(madre(Y, _)).

soltero(X):- not(matr(X, _)), hombre(X).