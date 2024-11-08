oc(E, [], 0).                     
oc(E, [E|T], C) :- oc(E, T, C2), C is C2 + 1.                  
oc(E, [H|T], C) :- E \= H, oc(E, T, C).                  
