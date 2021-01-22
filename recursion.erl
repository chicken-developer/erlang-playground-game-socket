-module(recursion).

-export([tail_reverse/2, duplicate/2, tail_len/1, tail_len/2, fac/1, len/1, start/0]). 

%Normal/ body recursion
fac(N) when N == 0 -> 1; 
fac(N) when N > 0 -> N*fac(N-1). 

%Normal/ body recursion
len([]) -> 0; 
len([_|T]) -> 1 + len(T). 

%Tail recursion
tail_len(L) -> tail_len(L,0). 
tail_len([], Acc) -> Acc; 
tail_len([_|T], Acc) -> tail_len(T,Acc+1). 
%Notes:
%   The first function len([]) is used for the special case condition if the list is empty.
%   The [H|T] pattern to match against lists of one or more elements,
%   as a list of length one will be defined as [X|[]] and a list of length two will be defined as [X|[Y|[]]]. 
%   Note that the second element is a list itself. 
%   This means we only need to count the first one and the function can call itself on the second element. 
%   Given each value in a list counts as a length of 1.


%Tail recursion
duplicate(0,_) -> 
   []; 
duplicate(N,Term) when N > 0 ->
   io:fwrite("~w,~n",[Term]),
   [Term|duplicate(N-1,Term)]. 


tail_reverse(L) -> tail_reverse(L,[]).

tail_reverse([],Acc) -> Acc; 
tail_reverse([H|T],Acc) -> tail_reverse(T, [H|Acc]).
start() -> 
   X = fac(4), 
   io:fwrite("~w",[X]),

   X_new = [1,2,3,4], 
   Y = len(X_new), 
   io:fwrite("~w",[Y]),

   X_new2 = [1,2,3,4], 
   Y_new = tail_len(X_new2), 
   io:fwrite("~w",[Y_new]),

   duplicate(5,1),

   X_new3 = [1,2,3,4], 
   Y_new2 = tail_reverse(X_new3), 
   io:fwrite("~w",[Y_new2]).