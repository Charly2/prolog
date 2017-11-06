

% BaseConocimientos: diagnosticos y sintomas

frame(enfermedad('gastritis'),
      sintomas(['El paciente tiene dolor agudo en vientre',
                'El paciente tiene diarrea',
                'El paciente tiene muchos gases']),
       descrip('La gastritis es una inflamacion de la mucosa gastrica, que es la capa de celulas que reviste el estomago por dentro protegiendolo de la acidez de los jugos gastricos. '),
        img('gastritis.jpg')).

frame(enfermedad('sarampion'),
      sintomas(['El paciente esta cubierto de puntos',
		'El paciente tiene temperatura alta',
                'El paciente tiene ojos rojos',
		'El paciente tiene tos seca']),
       descrip('Descripcion de la enfermedad'),
        img('sarampion.jpg')).

frame(enfermedad('malaria')
,      sintomas(['El paciente tiene temperatura alta',
		'El paciente tiene dolor en las articulaciones',
		'El paciente tiembla violentamente',
		'El paciente tiene escalofrios']),
       descrip('Descripcion de la enfermedad'),
        img('malaria.jpg')).

frame(enfermedad('influenza'),
      sintomas(['El paciente tiene dolor en las articulaciones',
	        'El paciente tiene mucho estornudo',
                'El paciente tiene dolor de cabeza']),
       descrip('Descripcion de la enfermedad'),
        img('influenza.jpg')).

frame(enfermedad('gripe'),
      sintomas(['El paciente tiene cuerpo cortado',
                'El paciente tiene dolor de cabeza',
	        'El paciente tiene temparatura alta']),
       descrip('Descripcion de la enfermedad'),
        img('gripe.jpg')).

frame(enfermedad('tifoidea'),
      sintomas(['El paciente tiene falta de apetito',
		'El paciente tiene temperatura alta',
		'El paciente tiene dolor abdominal',
		'El paciente tiene dolor de cabeza',
		'El paciente tiene diarrea']),
       descrip('Descripcion de la enfermedad'),
        img('tifoidea.jpg')).

frame(enfermedad('tetanos'),
      sintomas(['El paciente tiene insomnio',
		'El paciente tiene nerviosismo',
		'El paciente tiene complicacion al respirar',
		'El paciente tiene dificultad al tragar',
		'El paciente tiene fiebre']),
       descrip('Descripcion de la enfermedad'),
        img('tetanos.jpg')).

frame(enfermedad('rubeola'),
      sintomas(['El paciente tiene fiebre',
		'El paciente tiene erupciones cutaneas',
		'El paciente tiene hematomas',
		'El paciente tiene inflamacion en ojos',
		'El paciente tiene dolor muscular']),
       descrip('Descripcion de la enfermedad'),
        img('rubeola.jpg')).

frame(enfermedad('varicela'),
      sintomas(['El paciente tiene fiebre',
		'El paciente tiene erupciones cutaneas',
		'El paciente tiene dolor de cabeza',
		'El paciente tiene dolor de estomago',
		'El paciente tiene comezon']),
       descrip('Descripcion de la enfermedad'),
        img('varicela.jpg')).

frame(enfermedad('paperas'),
      sintomas(['El paciente tiene dolor facial',
		'El paciente tiene fiebre',
		'El paciente tiene dolor de cabeza',
		'El paciente tiene perdida de apetito',
		'El paciente tiene dolor de garganta']),
       descrip('Descripcion de la enfermedad'),
        img('paperas.jpg')).

que_es(X):-((instancia(X),es(Clase,X));
	    (subclase(X),subc(X,Clase))),Clase\=objeto,write('es '),writeln(Clase),fail.
es(Clase,Obj):- frame(Obj,instancia_de(Clase),_).
es(Clase,Obj):- frame(Obj,instancia_de(Clasep),_),subc(Clasep,Clase).

subc(C1,C2):- frame(C1,subclase_de(C2),_).
subc(C1,C2):- frame(C1,subclase_de(C3),_),subc(C3,C2).

subclase(X):-frame(X,subclase_de(_),_).
instancia(X):-frame(X,instancia_de(_),_).

propiedadesc(objeto):-!.
propiedadesc(X):-frame(X,subclase_de(Y),propiedades(Z)),imprime(Z),propiedadesc(Y).
propiedadesi(X):-frame(X,instancia_de(Y),propiedades(Z)),imprime(Z),propiedadesc(Y).

props(X):-(instancia(X),propiedadesi(X));(subclase(X),propiedadesc(X)).

imprime([]):-!.
imprime([H|T]):-writeln(H),imprime(T).

que_puedes_decirme_de(X):-que_es(X);props(X).




quien(L,E,S,D,I):-frame(enfermedad(E),sintomas(S),descrip(D),img(I)),sublista(L,S).



sublista([P],L):-pertenece(P,L).
sublista([_|P],L):-sublista(P,L).

pertenece(E,[E|_]).
pertenece(E,[_|T]):-pertenece(E,T).
