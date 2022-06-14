-module(hello).
-compile(export_all).


say_it() ->
    io:format("hello world~n").
