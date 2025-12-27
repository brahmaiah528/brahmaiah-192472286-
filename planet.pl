% Planet facts
planet(mercury).
planet(venus).
planet(earth).
planet(mars).
planet(jupiter).
planet(saturn).
planet(uranus).
planet(neptune).

% Planet type
rocky(mercury).
rocky(venus).
rocky(earth).
rocky(mars).

gas_giant(jupiter).
gas_giant(saturn).
ice_giant(uranus).
ice_giant(neptune).

% Orbit order (from the Sun)
orbit(mercury, 1).
orbit(venus, 2).
orbit(earth, 3).
orbit(mars, 4).
orbit(jupiter, 5).
orbit(saturn, 6).
orbit(uranus, 7).
orbit(neptune, 8).

% Rules
planet_type(Planet, rocky) :-
    rocky(Planet).

planet_type(Planet, gas_giant) :-
    gas_giant(Planet).

planet_type(Planet, ice_giant) :-
    ice_giant(Planet).
