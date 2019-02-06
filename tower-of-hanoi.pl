move(1,X,Y,_) :-  
    write('Move the topmost disk from '), 
    write(X), 
    write(' tower to '), 
    write(Y), 
    write(' tower. '), 
    nl. 
move(N,X,Y,Z) :- 
    N>1, 
    M is N-1, 
    move(M,X,Z,Y), 
    move(1,X,Y,_), 
    move(M,Z,Y,X).
