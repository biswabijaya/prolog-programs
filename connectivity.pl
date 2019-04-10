edge(a,b).
edge(b,a).
edge(a,c).
go(a,c).
go(a,b).

reach(X,Y) :- go(X,Y).

reach(X,Y) :- go(X,A), go(A,B), go(B,C), go(C,Y).

connect(X,Y) :- edge(X,A), edge(A,B), edge(B,C), edge(C,Y).