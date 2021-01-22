-module(function). 
-export([add/2,add/3,addWithGuard/1, start/0]). 

addWithGuard(X) when X>3 -> 
   io:fwrite("~w~n",[X]). 
%These are nothing but expressions which only when evaluated to true will cause the function to run.   
add(X,Y) -> 
   Z = X+Y, 
   io:fwrite("~w~n",[Z]). 
add(X,Y,Z) -> 
   A = X+Y+Z, 
   io:fwrite("~w~n",[A]). 
start() -> 
   addWithGuard(1),
   add(5,6),
   add(6,7,8),

    %Lambda function
   Fn = fun() -> 
      io:fwrite("Anonymous Function") end, 
   Fn().

%Notes for lambda:
%   The anonymous function is defined with the fun() keyword.
%   The Function is assigned to a variable called Fn.
%   The Function is called via the variable name.
