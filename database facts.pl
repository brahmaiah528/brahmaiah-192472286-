% Gender
male(john).
male(paul).
male(david).

female(mary).
female(linda).
female(susan).

% Date of Birth: dob(Name, Day, Month, Year)
dob(john, 15, 6, 1970).
dob(mary, 20, 8, 1975).
dob(paul, 10, 5, 1998).
dob(linda, 25, 9, 2000).
dob(susan, 12, 3, 2022).
dob(david, 18, 11, 2023).

% Parent relationships
parent(john, paul).
parent(mary, paul).

parent(john, linda).
parent(mary, linda).

parent(paul, susan).
parent(linda, david).

% Rules
father(F, C) :-
    parent(F, C),
    male(F).

mother(M, C) :-
    parent(M, C),
    female(M).

sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

grandparent(G, C) :-
    parent(G, P),
    parent(P, C).

born_in_year(Person, Year) :-
    dob(Person, _, _, Year).
