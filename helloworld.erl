-module(helloworld).
-export([hello_world/0, add/2]).

-export([start/0]).

hello_world() -> 
    io:fwrite("Hello world \n").

add(F_number, S_number) ->
    Sum = F_number + S_number,
    io:fwrite("~w~n", [Sum]).

start() -> 
    hello_world(),
    add(10,20),
    io:fwrite("Hello from start").