nand(0,0,1).
nand(0,1,1).
nand(1,0,1).
nand(1,1,0).

halfadder(A,B,Sum,Carry):-
nand(A,B,A1),nand(A,A1,A2),nand(A1,B,A3),nand(A1,A1,Carry),nand(A2,A3,Sum).