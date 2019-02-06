male(john).
male(bob).
male(bill).
male(ron).
male(jeff).

female(mary).
female(sue).
female(nancy).

mother(mary, sue).
mother(mary, bill).
mother(sue, nancy).
mother(sue, jeff).
mother(jane, ron).

father(john, sue).
father(john, bill).
father(bob, nancy).
father(bob, jeff).
father(bill, ron).

sibling(bob,bill).
sibling(sue,bill).
sibling(nancy,jeff).
sibling(nancy,ron).
sibling(jeff,ron).



sibling(X, Y) :-
      parent(Z, X),
      parent(Z, Y),
      X \= Y.

sister(X, Y) :-
      sibling(X, Y),
      female(X).

brother(X, Y) :-
      sibling(X, Y),
      male(X). 

parent(Z,Y) :- father(Z,Y).
parent(Z,Y) :- mother(Z,Y).
