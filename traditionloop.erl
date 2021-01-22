-module(traditionloop). 
-export([while/1,while/2,for/2, start/0]). 

while(L) -> while(L,0). 
while([], Acc) -> Acc;

while([_|T], Acc) ->
   io:fwrite("~w~n",[Acc]), 
   while(T,Acc+1). 

for(0,_) -> 
    []; 

    for(N,Term) when N > 0 -> 
        io:fwrite("Hello~n"), 
        [Term|for(N-1,Term)]. 

start() -> 
   X = [1,2,3,4], 
   for(5,1),
   while(X).
% Look, recursion every where