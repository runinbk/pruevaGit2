%----------- base de conocimiento --------------
hombre(luis).
hombre(carlos).
hombre(kevin).
hombre(daniel).
hombre(damian).
hombre(jose).
hombre(gabriel).
hombre(carlos).
 
mujer(jhoany).
mujer(anny).
mujer(genesis).
mujer(clared).
mujer(diana).
mujer(liz).
mujer(maily).
mujer(selene).
mujer(carla).
 
matr(gabriel,jhoany).
matr(jose,maily).
matr(carlos,selena).
matr(daniel,anny).
matr(damian,diana).
 
hombreSimp(kevin,carla).
hombreSimp(daniel,jhoany).
hombreSimp(damian,anny).
hombreSimp(luis,selene).
 
mujerSimp(anny,luis).
mujerSimp(carla,kevin).
mujerSimp(genesis,damian).
mujerSimp(maily,carlos).
mujerSimp(diana,kevin).
 
%-------reglas—----------
%Hombres que no le caen simpatico a nadie.
hombreNoSimp(X) :- hombre(X), not(hombreSimp(X,_)).
 
%Mujeres que no le cae simpatica a nadie.
mujerNoSimp(X) :- mujer(X), not(mujerSimp(X,_)).
 
%Mujeres que caen simpaticas solo a hombres casados.
mujerSimpCasado( X ) :- mujerSimp( Y, X), matr(Y,_), not(matr(Y, X)).
 
%Parejas de matrimonio que no se caen simpaticos.
matrNoSimp(X, Y) :- matr(X,Y), not(mujerSimp(X,Y)), not(hombreSimp(X,Y)).
 
%Hombres que no caen simpaticos a sus esposas.
hombreCasadoNoSimp(X) :- matr(X, Y), not(hombreSimp(X,Y)).
