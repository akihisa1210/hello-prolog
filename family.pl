parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

male(jim).
male(tom).
male(bob).
female(pam).
female(pat).
female(liz).
female(ann).

offspring(Y, X) :-
  parent(X, Y).

mother(X, Y) :-
  parent(X, Y),
  female(X).

grandparent(X, Z) :-
  parent(X, Y),
  parent(Y, Z).

sister(X, Y) :-
  parent(Z, X),
  parent(Z, Y),
  female(X).
