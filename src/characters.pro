
numericalCharacter(Range):- between(0,9,Range).


lowerAlphabeticCharacter(Char) :-
  between(97, 122, Code),
  char_code(Char, Code).

upperAlphabeticCharacter(Char) :-
  between(65, 90, Code),
  char_code(Char, Code).

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
