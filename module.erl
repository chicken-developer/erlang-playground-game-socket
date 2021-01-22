-module(module). 
-import(io,[fwrite/1]). %Systax: -import (modulename , [functionname/parameter]).

-export([start/0]). %export([FunctionName1/FunctionArity1,.,FunctionNameN/FunctionArityN]) -> Prebuild

start() -> 
   fwrite("Hello, world!\n").