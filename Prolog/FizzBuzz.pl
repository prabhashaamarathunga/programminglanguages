:- use_module(library(aggregate),[foreach/2]).
:- initialization(fizzbuzz).


fizzbuzz :-
        foreach(between(1,100,A), print_fizzbuzz(A)).
 
print_fizzbuzz(A) :-
        (  0 is A mod 15
        -> print('fizzbuzz')
        ;  0 is A mod 3
        -> print('fizz')
        ;  0 is A mod 5
        -> print('buzz')
        ;  print(A)
        ),
        nl.