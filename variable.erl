-module(helloworld). 
-export([start/0]). 

start() -> 
   X = 40.00, 
   Y = 50.00, 
   io:fwrite("~f~n",[X]), 
   io:fwrite("~e",[Y]).
%  ~ − This character symbolizes that some formatting needs to be carried out for the output.

%  ~f − The argument is a float which is written as [-]ddd.ddd, 
%  where the precision is the number of digits after the decimal point. 
%  The default precision is 6 and it cannot be less than 1.

%  ~n − This is to println to a new line.

%  ~e − The argument is a float which is written as [-]d.ddde+-ddd, 
%  where the precision is the number of digits written. 
%  The default precision is 6 and it cannot be less than 2.