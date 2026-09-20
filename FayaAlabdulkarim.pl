% Male family members
male(faisal).
male(khalid).
male(ahmed).
male(ali).

% Female family members
female(maha).
female(ahoud).
female(amal).
female(lama).
female(reem).

% Parent relationships

% Maha and Faisal are Amal's parents
parent(maha, amal).
parent(faisal, amal).

% Ahoud and Khalid are Ahmed's parents
parent(ahoud, ahmed).
parent(khalid, ahmed).

% Ahoud and Khalid are Lama's parents
parent(ahoud, lama).
parent(khalid, lama).

% Amal and Ahmed are Ali's parents
parent(amal, ali).
parent(ahmed, ali).

% Amal and Ahmed are Reem's parents
parent(amal, reem).
parent(ahmed, reem).


% Father rule
father(X, Y) :-
    male(X),
    parent(X, Y).

% Mother rule
mother(X, Y) :-
    female(X),
    parent(X, Y).

% Sister rule
sister(X, Y) :-
    female(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

% Brother rule
brother(X, Y) :-
    male(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.
