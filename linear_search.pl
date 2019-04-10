ls(L,E):- append(P,[A|T],L),
	  A==E -> write('Found');
	  append(P,T,L),
	  write('not found').