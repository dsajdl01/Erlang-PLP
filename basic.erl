-module(basic).
-export([mirror/1]).
-export([another_factorial/1]).
-export([another_fib/1]).
-export([number/1]).
-export([case_function/1]).


% Result:
% 1> pwd(). 		;=>  /home/david    ok
% 2> cd(erlang). 	;=>  home/david/erlang	ok
% 3> c(basic). 		;=>	 {ok,basic}

mirror(Anything) -> Anything.

% Result:
% 4> basic:mirror("Speaking"). 		;=>  "Speaking"
% 5> basic:mirror(34).        		;=>	  34
% 6> basic:mirror(5 + 6).  			;=>   11
% 7> basic:mirror(5 * 6). 			;=>   30

number(one) -> 1;
number(two) -> 2;
number(three) -> 3.

% Result:
% 8> basic:number(one). 		;=>  1
% 9> basic:number(two). 		;=>  2
% 10> basic:number(three). 	  	;=>  3
% 11> basic:number(five). 		;=> ** exception error: 


another_factorial(0) -> 1;
another_factorial(N) -> N * another_factorial(N-1).

% Result:
% 12> basic:another_factorial(2). 		;=>  2
% 13> basic:another_factorial(3). 		;=>  6
% 14> basic:another_factorial(4).		;=>  24
% 15> basic:another_factorial(5).		;=>  120
% 16> basic:another_factorial(1).		;=>  1
% 22> basic:another_factorial(6).		;=>  720


another_fib(0) -> 1;
another_fib(1) -> 1;
another_fib(X) -> another_fib(X-1) + another_fib(X - 2).

% Result:
% 23> basic:another_fib(0).      ;=>  1
% 24> basic:another_fib(1).		 ;=>  1
% 25> basic:another_fib(3).		 ;=>  3
% 26> basic:another_fib(4).	 	 ;=>  5
% 27> basic:another_fib(5).  	 ;=>  8
% 28> basic:another_fib(6). 	 ;=>  13


case_function(Animal) -> case Animal of
					"dog" -> underdog;
					"cat" -> thundercat;
					"elephant" -> dumbo;
					_ -> something_else
				end.

% Result
% 36> basic:case_function("dog"). 		;=>  underdog
% 37> basic:case_function("Rat").		;=>  something_else
% 38> basic:case_function("cat").		;=>  thundercat
% 39> basic:case_function("elephant").  ;=>  dumbo
