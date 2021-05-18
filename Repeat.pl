get_answer(Answer) :-   
      write('Enter answer to question'), nl,   
      repeat, write('yes or no answer'), read(Answer),  
      valid(Answer), write('The correct answer is '), write(Answer), nl.  
      valid(yes).  valid(no). 