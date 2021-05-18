valid([]).
valid([Head|Tail]) :- 
  fd_all_different(Head), 
  valid(Tail).
 
sudoku(Puzzle, Solution) :-
  Solution = Puzzle,
  Puzzle = [A1, A2, B1, B2, 
            A3, A4, B3, B4, 
            C1, C2, D1, D2, 
            C3, C4, D3, D4], 
             
  fd_domain(Solution, 1, 4), 
   
  Row1 = [A1, A2, B1, B2],
  Row2 = [A3, A4, B3, B4],
  Row3 = [C1, C2, D1, D2],
  Row4 = [C3, C4, D3, D4],
   
  Col1 = [A1, A3, C1, C3],
  Col2 = [A2, A4, C2, C4],
  Col3 = [B1, B3, D1, D3],
  Col4 = [B2, B4, D2, D4],
   
  Square1 = [A1, A2, A3, A4],
  Square2 = [B1, B2, B3, B4],
  Square3 = [C1, C2, C3, C4],
  Square4 = [D1, D2, D3, D4], 
   
  valid([Row1, Row2, Row3, Row4, 
         Col1, Col2, Col3, Col4, 
         Square1, Square2, Square3, Square4]).