father(ram, shyam).
father(shyam, rohan).

parent(X,Y) :-
    father(X,Y).

grandparent(X,Y) :-
    parent(X,Z),
    parent(Z,Y).