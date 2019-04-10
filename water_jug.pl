jug(J3,J4) :-	J3 is 0, J4 is 0, write('Both jugs are empty. Fill the 3l jug with water.'), nl, J3=3.

jug(J3,J4) :-	J4 is 0, J3 is 3, write('Fill the 4l jug with water from 3l jug. 4l jug has some amount of water the 3l jug had.'), nl,J3=0,J4=3.

jug(J3,J4) :-	J4 is 3, J3 is 0, write('Fill the 3l jug with water. 3l and 4l jugs have same amount of water.'), nl, J3=3, J4=3.

jug(J3,J4) :-	J4 is 3, J3 is 3, write('Fill water from 3l jug to 4l jug till 4l jug is full.'),nl,J3=2,J4=4.

jug(J3,J4) :-	J3 is 2, J4 is 4, write('Pour water out of 4l, till it is empty.'), J4=0, J3=2.

jug(J3,J4) :-	J4 is 0, J3 is 2, write('Pour water from 3l jug to 4l jug till 3l jug is empty.'), nl, J3=0, J4=2.

jug(J3,J4) :-	J3 is 0, J4 is 2, write('4l jug has 2l water and 3l jug is empty.').