hombre(raul).
hombre(kevin).
hombre(jose).
hombre(juan).
hombre(pablo).
hombre(cesar).
hombre(pedro).
hombre(samuel).
hombre(carlos).

mujer(maria).
mujer(alicia).
mujer(julia).
mujer(sara).
mujer(tania).
mujer(isabel).
mujer(ana).
mujer(lucia).
mujer(elvira).

cerveza(conti).
cerveza(burguesa).
cerveza(ducal).
cerveza(paceña).

bar(vintage).
bar(texas).
bar(duda).
bar(moes).
bar(vice).
bar(comic).

bebedores(raul).
bebedores(jose).
bebedores(lucia).
bebedores(isabel).
bebedores(ana).
bebedores(cesar).
bebedores(pedro).
bebedores(carlos).
bebedores(maria).

gusta(pedro, ducal).
gusta(cesar, conti).
gusta(raul, paceña).
gusta(lucia, burguesa).
gusta(isabel, paceña).
gusta(ana, ducal).
gusta(maria, conti).

sirve(texas, ducal).
sirve(duda, conti).
sirve(vintage, paceña).
sirve(comic, burguesa).
sirve(vice, conti).
sirve(moes, paceña).
sirve(texas, conti).
sirve(duda, burguesa).
sirve(vintage, ducal).

frec(raul, moes).
frec(jose, comic).
frec(lucia, texas).
frec(isabel, ducal).
frec(ana, comic).
frec(cesar, vice).
frec(pedro, moes).
frec(carlos, texas).
frec(maria, vintage).
frec(kevin, duda).

%-------REGLAS -------------

frecBar(X, Y):- bebedores(X), sirve(Z, Y), frec(X, Z), gusta(X, Y).

barNotFrecBb(X, Y):-  bebedores(X), sirve(Z, Y), not(frec(X, Z)), gusta(X, Y). 

mujNotFrec(Y):- mujer(Y), not(frec(Y, _)).

noGusta(X, Y):- (hombre(X); mujer(X)), not(frec(X, _)).