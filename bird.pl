% Facts
bird(sparrow).
bird(pigeon).
bird(parrot).
bird(penguin).
bird(ostrich).

% Can fly or not
can_fly(sparrow).
can_fly(pigeon).
can_fly(parrot).

cannot_fly(penguin).
cannot_fly(ostrich).

% Bird color
color(sparrow, brown).
color(pigeon, grey).
color(parrot, green).
color(penguin, black_white).
color(ostrich, brown).

% Rules
flying_bird(X) :-
    bird(X),
    can_fly(X).

non_flying_bird(X) :-
    bird(X),
    cannot_fly(X).
