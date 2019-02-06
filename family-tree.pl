% List of males
male(bob).
male(john).

% List of all females
female(mary).
female(sofia).

% List of all the spouses
% spouse(X,Y) :- X and Y are spouses.

spouse(bob, mary).
spouse(mary, bob).

% List of all the parents
% parent(X,Y) :- X is parent of Y.

parent(bob, john).
parent(bob, sofia).
parent(mary, john).
parent(mary, sofia).

% List of all the children
% child(X,Y) :- X is child of Y.

child(john, bob).
child(john, mary).
child(sofia, bob).
child(sofia, mary).

% sibling(X,Y) :- X and Y are siblings.

sibling(john, sofia).
sibling(sofia, john).

% father(X,Y) :- X is father of Y.
father(X,Y) :- parent(X,Y), male(X).

% mother(X,Y) :- X is mother of Y.
mother(X,Y) :- parent(X,Y), female(X).

% brother(X,Y) :- X is brother of Y.
brother(X,Y) :- sibling(X,Y), male(X).

% sister(X,Y) :- X is sister of Y.
sister(X,Y) :- sibling(X,Y), female(X).

% husband(X,Y) :- X is husband of Y.
husband(X,Y) :- spouse(X,Y), male(X).

% wife(X,Y) :- X is wife of Y.
wife(X,Y) :- spouse(X,Y), female(X).
