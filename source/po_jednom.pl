% slovny_druh(Slovo, S) :- Slovo je slovného druhu S
slovny_druh(n, chlap).
slovny_druh(n, hrdina).
slovny_druh(n, dub).
slovny_druh(n, stroj).

% negace(Slovo) :- skontrolovať, či začína Slovo na "ne"
negace([N,E|Rest]) :- N = 'n', E = 'e'. 


% stupen(Slovo, Cislo)
stupen(Slovo, 2) :- reverse(Slovo,[I,S|_]), I =í, S = š, \+stupen(Slovo,3).
stupen([N, A, J| Rest], 3) :- N = 'n', A = 'a', J = 'j', stupen(Rest, 2), !.

%spracuj(Znacky, Znacka).

znackuj(Slovo, Znacka) :- string_chars(Slovo, Znaky), spracuj(Znaky, Znacka).
