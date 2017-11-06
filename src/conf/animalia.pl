%Frames para jerarquía taxonómica

frame(animalia,   subclase_de(objeto),     propiedades([puede(respirar)])). %Clase superior
frame(pantherinae,subclase_de(animalia),   propiedades([tiene(garras)])).

%Frame para el último nivel de jerarquía

frame_a(panthera_tigris,
      subclase_de(pantherinae),
      propiedades([tiene(rayas),vive_en(asia)]),
      nombre_vulgar(tigre), imagen('tigre.jpg')).

frame_a(panthera_leo,
      subclase_de(pantherinae),
      propiedades([tiene(melena),vive_en(africa)]),
      nombre_vulgar(leon), imagen('leon.jpg')).


%
% Regla para investigar qué animal tiene una lista de propieades
%

quien(P,X,V,I,L2):-frame_a(X,subclase_de(C),propiedades(L),nombre_vulgar(V),imagen(I)),
                propiedadesc(C,L1),concatenar(L,L1,L2),sublista(P,L2).

% Investiga propiedades de clases jerarquicas en la taxonomía

propiedadesc(objeto,[]):-!.   % objeto es el tope
propiedadesc(X,P):-frame(X,subclase_de(Y),propiedades(Z)),propiedadesc(Y,Z1),concatenar(Z,Z1,P).

% Reglas de apoyo


sublista([P],L):-pertenece(P,L).
sublista([_|P],L):-sublista(P,L).

pertenece(E,[E|_]).
pertenece(E,[_|T]):-pertenece(E,T).

concatenar([],L,L).
concatenar([X|L1],L2,[X|L3]):-concatenar(L1,L2,L3).





