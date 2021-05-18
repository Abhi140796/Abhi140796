loop:- write('The value is'), read(Word),  
     write('Input value is '), write(Word), nl,  
     (Word=end; loop).