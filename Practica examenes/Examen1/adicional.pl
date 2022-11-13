hombre(kevin).
hombre(carlos).
hombre(juan).
hombre(pedro).
hombre(arturo).
hombre(rodrigo).
hombre(luis).
hombre(diego).

mujer(liz).
mujer(fernanda).
mujer(celene).
mujer(veronica).
mujer(gaby).
mujer(susy).
mujer(genesis).
mujer(claret).

mart(juan, fernanda).
mart(pedro, gaby).
mart(arturo, susy).
mart(diego, claret).

rest(theDublin).
rest(veintitres).
rest(aloGaucho).
rest(cumpaRey).
rest(iBorgo).
rest(jardinDeAsia).

tipoCom(pasta).
tipoCom(ensalada).
tipoCom(asado).
tipoCom(tipica).
tipoCom(gourmet).
tipoCom(rapida).

sirve(theDublin, rapida).
sirve(veintitres, rapida).
sirve(aloGaucho, asado).
sirve(cumpaRey, tipica).
sirve(iBorgo, pasta).
sirve(jardinDeAsia, gourmet).
sirve(theDublin, ensalada).
sirve(veintitres, asado).
sirve(aloGaucho, ensalada).
sirve(cumpaRey, ensalada).
sirve(theDublin, pasta).

gusta(kevin, asado).
gusta(luis, pasta).
gusta(carlos, tipica).
gusta(juan, gourmet).
gusta(pedro, ensalada).
gusta(arturo, rapida).
gusta(rodrigo, asado).
gusta(diego, pasta).
gusta(liz, asado).
gusta(fernanda, ensalada).
gusta(celene, gourmet).
gusta(veronica, rapida).
gusta(gaby, tipica).
gusta(susy, asado).
gusta(genesis, gourmet).
gusta(claret, tipica).
gusta(kevin, ensalada).
gusta(fernanda, gourmet).

%--------- Hechos ----------------

persona(X):-    hombre(X); mujer(X).

%parejas que le gusten este restaurant en comun
parejGusRest(X, Y):-    mart(X, Y), gusta(X, A), gusta(Y, B),
                        sirve(C, A), sirve(D, B), not(C \= D).

%personas solteras que les gustan este tipo de comida
persGustComi(X, Y):-    gusta(Y, X), (not(mart(Y, _)); 
                        not(mart(_, Y))).

%personas solteras a las que les guste este restaurant
persSoltGustRest(X, Y):-    persona(X), (not(mart(X, _)); 
                            not(mart(_, X))), gusta(X, A), sirve(Y, A).

%restaurant a la que va un hombre con su pareja
restPareja(X, Y):-  mart(X, _), gusta(X, Z), sirve(Y, Z).

%restaurant a la que va esta persona
restPers(X, Y):-    gusta(X, Z), sirve(Y, Z).