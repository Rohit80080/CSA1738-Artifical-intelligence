can_fly(sparrow).
can_fly(eagle).
can_fly(pigeon).
can_fly(swallow).

cannot_fly(ostrich).
cannot_fly(penguin).
cannot_fly(kiwi).

% Rule to determine if a bird can fly
bird_can_fly(Bird) :-
    can_fly(Bird),
    write(Bird), write(' can fly.').

bird_can_fly(Bird) :-
    cannot_fly(Bird),
    write(Bird), write(' cannot fly.').
