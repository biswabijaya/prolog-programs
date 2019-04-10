noun(Ram).
noun(Siya).
noun(Shyam).
verb(has).
verb(have).
article(a).
article(an).
article(the).
object(book).
object(tail).
object(bicycle).

word(A,B,C,D) :- noun(A),verb(B),article(C),object(D),write('correct').

word(A,B,C,D) :- article(A),noun(B),verb(C),object(D),write('incorrect').