fct(0,1).

fct(N,F) :-  
N>0, N1 is N-1, 
fct(N1,F1), 
F is N * F1.
