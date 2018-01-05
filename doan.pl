nnp(nnp(nam), human) --> [nam].
rb(rb(hay)) --> [hay].
rb(rb(rat)) --> [rat].
vb(vb(thich), human, T) --> [thich].
vb(vb(doc), human, book) --> [doc].
nn(nn(sach), book) --> [sach].
in(in(o), library) --> [o].
nn(nn([thu, vien]), library) --> [thu, vien].
cc(cc(va)) --> [va].
nnp(nnp(lan), human) --> [lan].
rb(rb(deu)) --> [deu].
cd(cd(mot)) --> [mot].
unn(unn(cuon), book) --> [cuon].
jj(jj(hay)) --> [hay].
vb(vb(cho), human, human) --> [cho].
vb(vb(muon), human, T) --> [muon].
rb(rb(cung)) --> [cung].
dt(dt(nhieu)) --> [nhieu].
vb(vb(co), human, book) --> [co].

np(X, Y) --> nnp(X, Y).
np(X, Y) --> nn(X, Y).
np(np(X, Y, Z), A) --> nnp(X, A), cc(Y), nnp(Z, A).
np(np(X, Y), Z) --> dt(X), np(Y, Z).
pp(pp(X, Y), Z) --> in(X, Z), np(Y, Z).
advp(advp(X)) --> rb(X).
vp(vp(X, Y), Z) --> advp(X), vp(Y,Z).
vp(vp(X,Y),Z) --> vb(X,Z,A), pp(Y,A).
vp(vp(X, Y, L), Z) --> vb(X, Z, A), np(Y,A), pp(L,T).
vp(vp(X, Y), Z) --> advp(X), vp(Y,Z).
vp(vp(X, Y), Z) --> vb(X, Z, A), np(Y, A).
vp(vp(X, Y), Z) --> vb(X, Z, A), vp(Y,A).
vp(vp(X, Y), Z) --> np(X, Z), vp(Y, Z).
np(np(X, Y), Z) --> cd(X), np(Y,A).
np(np(X, Y),Z) --> unn(X, Z), nn(Y,Z).
np(np(X, Y, T),Z) --> nnp(X,A), unn(Y, Z), nn(T,Z).
np(np(X, Y, T), Z) --> unn(X, Z), nn(Y, Z), adjp(T).
np(np(X,Y),Z) --> adjp(X), pp(Y,Z).
np(np(X, Y, T), Z) --> unn(X, Z), nn(Y, Z), np(T,A).
np(np(X, Y, T,E),Z) --> nnp(X,A), unn(Y, Z), nn(T,Z), adjp(E).
np(np(Y, T), Z) --> nn(Y, Z), adjp(T).
adjp(adjp(X)) --> jj(X).
adjp(adjp(X, Y)) --> rb(X), jj(Y).
np(np(X,Y),Z) --> advp(X), np(Y,Z).


s(s(X, Y)) --> np(X, Z), vp(Y, Z).
s(s(X, Y, Z)) --> s(X), cc(Y), s(Z).
