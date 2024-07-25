% Facts about family members
parent(john, mary).
parent(john, mike).
parent(mary, alice).
parent(mary, bob).
parent(mike, charlie).
parent(mike, diana).

% Define some relationships based on the parent facts

% A person is a mother if they are a parent and female
mother(Mother, Child) :-
    parent(Mother, Child),
    female(Mother).

% A person is a father if they are a parent and male
father(Father, Child) :-
    parent(Father, Child),
    male(Father).

% A person is a sibling if they share at least one parent
sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

% Define gender for some members
female(mary).
female(alice).
female(diana).

male(john).
male(mike).
male(bob).
male(charlie).
