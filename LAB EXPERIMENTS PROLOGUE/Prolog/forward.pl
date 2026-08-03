fact(sun_rises).
fact(daytime).

rule(go_to_college) :-
    fact(sun_rises),
    fact(daytime).