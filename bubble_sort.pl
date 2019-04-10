bs(L,S) :-	append(P,[A,B|T],L),
		B<A -> append(P,[B,A|T],R),
		bs(R,S);
		S=L.