% Define the dynamic predicate to store the database entries
:- dynamic person/2.

% Add a person to the database
add_person(Name, DOB) :-
    assertz(person(Name, DOB)).

% Remove a person from the database
remove_person(Name) :-
    retract(person(Name, _)).

% Find a person's DOB by their name
find_dob(Name, DOB) :-
    person(Name, DOB).

% List all people in the database
list_people :-
    person(Name, DOB),
    format('Name: ~w, DOB: ~w~n', [Name, DOB]),
    fail.
list_people.
