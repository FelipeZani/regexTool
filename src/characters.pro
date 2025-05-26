
%definitions of character groups

symbolCharacter(CharList):-
  
  findall(Symb1,between(33,47,Symb1),SymbList1),
  findall(Symb2,between(58,64,Symb2), SymbList2),
  findall(Symb3,between(91,96,Symb3), SymbList3),
  findall(Symb4,between(123,126,Symb4), SymbList4),

  append(SymbList1,SymbList2,NwRange1),
  append(SymbList3,SymbList4,NwRange2),
  append(NwRange1,NwRange2,FinalRange),

  maplist(char_code,CharList,FinalRange).

lowerAlphabeticCharacter(Char) :-
  between(97, 122, Code),
  char_code(Char, Code).

upperAlphabeticCharacter(Char) :-
  between(65, 90, Code),
  char_code(Char, Code).

numericalCharacter(Range):- between(0,9,Range).


d(X):- findall(X1, numericalCharacter(X1),X).

s(X):- char_code(X,32).

call_user_input("\\d",X) :- d(X).

call_user_input("\\s",X) :- s(X).

call_user_input("[a-z]",X) :- findall(X1, lowerAlphabeticCharacter(X1),X).

call_user_input("[A-Z]",X) :- findall(X1, upperAlphabeticCharacter(X1),X).

start:-
  format("Input character: "),nl,
  read_line_to_string(user_input,Input),
  call_user_input(Input,X),
  write(X).
