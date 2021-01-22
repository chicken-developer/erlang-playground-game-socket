-module(datatype).
-export([start/0]).

start() ->
    io:fwrite("Start program \n"),

    io:fwrite(atom1), %Atom data type

    io:fwrite("\n ~w \n",[10 + 20]), %Number data type: have 2 type are interger and double

    io:fwrite(2 >= 3 ), % Boolean type
    
    Bin1 = <<10,20>>,
    Temp = binary_to_list(Bin1), %Byte string
    io:fwrite("\n ~w \n", [Temp]),

    Temp_Tuppe = {john, 25, {anine, 22}}, % Tuple type
    io:fwrite("~w \n", [tuple_size(Temp_Tuppe)]),

    Temp_Map = #{name => john, age => 25}, %Map type
    io:fwrite("~w \n", [map_size(Temp_Map)]),

    Temp_List = [10, 20, 30, "Hello", 40], %List type
    io:fwrite("~w \n", [length(Temp_List)]).





