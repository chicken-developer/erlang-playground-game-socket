-module(ifStatements). 
-export([start/0]). 
% Notes: 
%   The expression being used here is the comparison between the variables A and B.
%   The -> operator needs to follow the expression.
%   The ; needs to follow statement#1.
%   The -> operator needs to follow the true expression.
%   The statement ‘end’ needs to be there to signify the end of the ‘if’ block.

start() -> 
   A = 5, 
   B = 6, 
   
    %Switch - case: Pattern matching for more
    case A of 
        5 -> io:fwrite("The value of A is 5"); 
        6 -> io:fwrite("The value of A is 6") 
    end,

    %Single expression
   if 
      A == B -> 
         io:fwrite("True"); 
      true -> 
         io:fwrite("False") 
   end,

   %Multiple expression
   if 
      A == B -> 
         io:fwrite("A is equal to B"); 
      A < B -> 
         io:fwrite("A is less than B"); 
      true -> 
         io:fwrite("False") 
   end,

   %Nested expression
   if 
      A < B ->
         if 
            A > 5 -> 
               io:fwrite("A is greater than 5"); 
            true -> 
               io:fwrite("A is less than 5")
         end;
      true -> 
         io:fwrite("A is greater than B") 
   end.