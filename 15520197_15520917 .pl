nnp(nnp(nam), human) --> [nam].
rb(rb(hay), T) --> [hay].
rb(rb(rat), md) --> [rat].
vb(vb(thich),human, T, md) --> [thich].
vb(vb(hay), human, T, md) --> [hay].
vb(vb(doc), human, book, verb) --> [doc].
nn(nn(sach), book) --> [sach].
in(in(o), library) --> [o].
nn(nn([thu, vien]), library) --> [thu, vien].
cc(cc(va)) --> [va].
nnp(nnp(lan), human) --> [lan].
rb(rb(deu),T) --> [deu].
cd(cd(mot)) --> [mot].
unn(unn(cuon), book) --> [cuon].
jj(jj(hay), book) --> [hay].
vb(vb(cho), human, human, verb) --> [cho].
vb(vb(muon), human, T, verb) --> [muon].
rb(rb(cung),T) --> [cung].
dt(dt(nhieu)) --> [nhieu].
vb(vb(co), human, book,verb) --> [co].

np(X, Y) --> nnp(X, Y).
np(X, Y) --> nn(X, Y).
np(np(X, Y, Z), A) --> nnp(X, A), cc(Y), nnp(Z, A).
np(np(X, Y), Z) --> dt(X), np(Y, Z).
pp(pp(X, Y), Z) --> in(X, Z), np(Y, Z).
advp(advp(X), T) --> rb(X, T).
vp(vp(X,Y),Z, T) --> vb(X,Z,A, T), pp(Y,A).
vp(vp(X, Y, L), Z, K) --> vb(X, Z, A, K), np(Y,A), pp(L,T).
vp(vp(X, Y), Z, T) --> advp(X, T), vp(Y,Z, T).
vp(vp(X, Y), Z, T) --> vb(X, Z, A, T), np(Y, A).
vp(vp(X, Y), Z, T) --> vb(X, Z, A, T), vp(Y,A,K).
vp(vp(X, Y), Z, T) --> np(X, Z), vp(Y, Z, T).
np(np(X, Y), Z) --> cd(X), np(Y,A).
np(np(X, Y),Z) --> unn(X, Z), nn(Y,Z).
np(np(X, Y, T),Z) --> nnp(X,A), unn(Y, Z), nn(T,Z).
np(np(X, Y, T), Z) --> unn(X, Z), nn(Y, Z), adjp(T,Z).
np(np(X,Y),Z) --> adjp(X, Z), pp(Y,Z).
np(np(X, Y, T), Z) --> unn(X, Z), nn(Y, Z), np(T,A).
np(np(X, Y),Z) --> nnp(X,A), np(Y, Z).
np(np(Y, T), Z) --> nn(Y, Z), adjp(T,Z).
adjp(adjp(X), T) --> jj(X, T).
adjp(adjp(X, Y), T) --> rb(X, A), jj(Y,T).
np(np(X,Y),Z) --> advp(X, T), np(Y,Z).


s(s(X, Y)) --> np(X, Z), vp(Y, Z, T).
s1(s1(X, Y)) --> np(X, Z), vp(Y, Z, T).
s(s(X, Y, Z)) --> s1(X), cc(Y), s(Z).
