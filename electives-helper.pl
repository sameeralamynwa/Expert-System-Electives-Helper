choice:- write('Welcome to the Electives Helper!'), nl ,subjects.

subjects:- clear_buffer, 
                  liking(cloud_computing), 
                  liking(coding), 
                  liking(simulation),
                  liking(modelling),
                  liking(animation),
		  liking(three_dimensional_modelling),
                  liking(virtual_reality), 
                  liking(cyber_security), 
                  liking(cyber_forensics),
                  liking(blockchain_technology),
                  liking(mathematic_modelling),
		  liking(matrix_computation),
                  liking(finance), 
                  liking(number_theory), 
                  liking(algorithms),
                  liking(statistics),
                  liking(data_science),
		  liking(iot),
                  liking(mathematics), 
                  liking(derivative_markets), 
                  liking(trading),
                  liking(accounting),
                  liking(web_designing),
		  liking(web_development),
                  liking(database_management), 
                  liking(devops),
                  cantake,
           	  clear_buffer.
                  
liking(X):- write('Do you like '),write(X),write('? ( y / n )'), nl , read(Ans), store(X,Ans).

store(X, 'y'):- asserta(incourse(X)).
store(X, 'n'):- asserta(notincourse(X)).

cantake:- incourse(cloud_computing),incourse(coding),
         incourse(simulation),incourse(modelling),!,
         write('You should take High Performance Computing').

cantake:- incourse(animation),incourse(three_dimensional_modelling),
         incourse(virtual_reality),!,
         write('You should take Computer Animation and Gaming').

cantake:- incourse(cyber_security),incourse(cyber_forensics),
         incourse(blockchain_technology),incourse(coding),!,
         write('You should take Information and Cyber Security').

cantake:- incourse(mathematic_modelling),incourse(matrix_computation),
         incourse(finance),incourse(number_theory),incourse(mathematics),!,
         write('You should take Mathematics and Computing').

cantake:- incourse(algorithms),incourse(statistics),
         incourse(data_science),incourse(coding),
	 incourse(mathematics),incourse(iot),!,
         write('You should take Data Science').

cantake:- incourse(mathematics),incourse(derivative_markets),
         incourse(trading),incourse(accounting),!,
         write('You should take Financial Derivative').

cantake:- incourse(web_designing),incourse(web_development),
         incourse(database_management),incourse(devops),!,
         write('You should take Full Stack Development').

cantake:- write('Sorry we could not find any of the available electives!').

clear_buffer:- retractall(incourse(_)).
