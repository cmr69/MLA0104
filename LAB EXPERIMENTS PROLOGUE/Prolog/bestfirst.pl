edge(a,b).
edge(a,c).
edge(b,d).
edge(c,e).
edge(d,f).
edge(e,g).

path(X,Y):- edge(X,Y).

path(X,Y):-
    edge(X,Z),
    path(Z,Y).