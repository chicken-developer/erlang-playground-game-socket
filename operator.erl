-module(operator). 
-export([start/0]). 

start() -> 
   X = 40, 
   Y = 50, 
   
   Res1 = X + Y, 
   Res2 = X - Y, 
   Res3 = X * Y, 
   Res4 = X / Y, %--: Like x/y -> interger/ interger can return float or interger
   Res5 = X div Y, %--: Like x %y
   Res6 = X rem Y, %--: Like x/y -> interger/ interger return interger
   
   io:fwrite("~w~n",[Res1]), 
   io:fwrite("~w~n",[Res2]), 
   io:fwrite("~w~n",[Res3]), 
   io:fwrite("~w~n",[Res4]), 
   io:fwrite("~w~n",[Res5]), 
   io:fwrite("~w~n",[Res6]),

   io:fwrite("~w~n",[3==2]), 
   io:fwrite("~w~n",[3/=2]), % Like !=
   io:fwrite("~w~n",[3<2]), 
   io:fwrite("~w~n",[3=<2]), % Must compare = before > or <  
   io:fwrite("~w~n",[3>2]), 
   io:fwrite("~w~n",[3>=2]),

    % Binary operator
   io:fwrite("~w~n",[true or false]),  
   io:fwrite("~w~n",[true and false]), 
   io:fwrite("~w~n",[true xor false]), 
   io:fwrite("~w~n",[not false]),

    %Binary operator
   io:fwrite("~w~n",[00111100 band 00001101]), 
   io:fwrite("~w~n",[00111100 bxor 00111100]), 
   io:fwrite("~w~n",[bnot 00111100]), 
   io:fwrite("~w~n",[00111100 bor 00111100]).