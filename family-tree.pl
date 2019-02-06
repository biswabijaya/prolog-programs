% List of males
male(bob).
male(john).
male(david).
male(jacob).

% List of all females
female(mary).
female(sofia).
female(elizabeth).
female(rose).

% List of all the spouses
% spouse(X,Y) :- X and Y are spouses.

spouse(bob, mary).
spouse(mary, bob).
spouse(david, elizabeth).
spouse(elizabeth, david).
spouse(jacob, rose).
spouse(rose, jacob).


% List of grandparents.
% grandparent(X,Y) :- X is grandparent of Y.

grandparent(david, john).
grandparent(david, sofia).
grandparent(elizabeth, john).
grandparent(elizabeth, sofia).
grandparent(jacob, john).
grandparent(jacob, sofia).
grandparent(rose, john).
grandparent(rose, sofia). 


% List of all the parents
% parent(X,Y) :- X is parent of Y.

parent(bob, john).
parent(bob, sofia).
parent(mary, john).
parent(mary, sofia).
parent(david, bob).
parent(elizabeth, bob).
parent(jacob, mary).
parent(rose, mary).

% List of all the children
% child(X,Y) :- X is child of Y.

child(john, bob).
child(john, mary).
child(sofia, bob).
child(sofia, mary).
child(bob, david).
child(bob, elizabeth).
child(mary, jacob).
child(mary, rose).

% List of grandchildren
% grandchild(X,Y) :- X is grandchild of Y.

grandchild(john, david).
grandchild(john, elizabeth).
grandchild(john, jacob).
grandchild(john, rose).
grandchild(sofia, david).
grandchild(sofia, elizabeth).
grandchild(sofia, jacob).
grandchild(sofia, rose).

% List of siblings
% sibling(X,Y) :- X and Y are siblings.

sibling(john, sofia).
sibling(sofia, john).

% father(X,Y) :- X is father of Y.
father(X,Y) :- parent(X,Y), male(X).

% mother(X,Y) :- X is mother of Y.
mother(X,Y) :- parent(X,Y), female(X).

% grandfather(X,Y) :- X is grandfather of Y.
grandfather(X,Y) :- grandparent(X,Y), male(X).

% grandmother(X,Y) :- X is mother of Y.
grandmother(X,Y) :- grandparent(X,Y), female(X).

% brother(X,Y) :- X is brother of Y.
brother(X,Y) :- sibling(X,Y), male(X).

% sister(X,Y) :- X is sister of Y.
sister(X,Y) :- sibling(X,Y), female(X).

% husband(X,Y) :- X is husband of Y.
husband(X,Y) :- spouse(X,Y), male(X).

% wife(X,Y) :- X is wife of Y.
wife(X,Y) :- spouse(X,Y), female(X).

% son(X,Y) :- X is son of Y.
son(X,Y) :- child(X,Y), male(X).

% daughter(X,Y) :- X is daughter of Y.
daughter(X,Y) :- child(X,Y), female(X).

% grandson(X,Y) :- X is grandson of Y.
grandson(X,Y) :- grandchild(X,Y), male(X).

% granddaughter(X,Y) :- X is granddaughter of Y.
granddaughter(X,Y) :- grandchild(X,Y), female(X).
