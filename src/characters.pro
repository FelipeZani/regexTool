
numericalCharacter(Range):- between(0,9,Range).


lowerAlphabeticCharacter(Char) :-
  between(97, 122, Code),
  char_code(Char, Code).

upperAlphabeticCharacter(Char) :-
  between(65, 90, Code),
  char_code(Char, Code).

characters('A-Z',X):-
  findall(X1,upperAlphabeticCharacter(X1),X).
d(X):-
  findall(X1, numericalCharacter(X1),X).
s(X):-
  char_code(X,32).

