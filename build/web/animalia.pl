%Frames para jerarquía taxonómica

frame(animalia,   subclase_de(objeto),     propiedades([puede(respirar)])). %Clase superior
frame(pantherinae,subclase_de(animalia),   propiedades([tiene(garras)])).
frame(camelinae,subclase_de(animalia),   propiedades([])).
frame(suidae,subclase_de(animalia),   propiedades([])).
frame(homininae,subclase_de(animalia),   propiedades([])).
frame(procyonidae,subclase_de(animalia),   propiedades([])).
frame(delphinidae,subclase_de(animalia),   propiedades([])).
frame(elephantidae,subclase_de(animalia),   propiedades([])).
frame(phocidae,subclase_de(animalia),   propiedades([])).
frame(felinae,subclase_de(animalia),   propiedades([])).
frame(hyaenidae,subclase_de(animalia),   propiedades([])).
frame(phascolarctidae,subclase_de(animalia),   propiedades([])).
frame(otariinae,subclase_de(animalia),   propiedades([])).
frame(mephitidae,subclase_de(animalia),   propiedades([])).
frame(obobenidae,subclase_de(animalia),   propiedades([])).
frame(giraffidae,subclase_de(animalia),   propiedades([])).
frame(ponginae,subclase_de(animalia),   propiedades([])).
frame(ursidae,subclase_de(animalia),   propiedades([])).
frame(canidae,subclase_de(animalia),   propiedades([])).
frame(rhinocerotidae,subclase_de(animalia),   propiedades([])).
frame(mustelidae,subclase_de(animalia),   propiedades([])).


frame(mustelinae,subclase_de(animalia),   propiedades([])).





%Frame para el último nivel de jerarquía

frame_a(panthera_tigris,
      subclase_de(pantherinae),
      propiedades([tiene(rayas),vive_en(asia)]),
      nombre_vulgar(tigre), imagen('tigre.jpg')).

frame_a(panthera_leo,
      subclase_de(pantherinae),
      propiedades([tiene(melena),vive_en(africa)]),
      nombre_vulgar(leon), imagen('leon.jpg')).

frame_a(vicugna_pacos,
      subclase_de(camelinae),
      propiedades([tiene(pelo),vive_en(america)]),
      nombre_vulgar(alpaca), imagen('alpaca.jpg')).

frame_a(sus_scrofa,
      subclase_de(suidae),
      propiedades([tiene(cola_torcida),tiene(hocico_redondo),vive_en(europa)]),
      nombre_vulgar(cerdo), imagen('cerdo.jpg')).

frame_a(pan_troglodytes,
      subclase_de(homininae),
      propiedades([tiene(orejas_grandes),tiene(pelo),vive_en(africa)]),
      nombre_vulgar(chimpance), imagen('chimpance.jpg')).

frame_a(nasua,
      subclase_de(procyonidae),
      propiedades([tiene(cola_larga),vive_en(america)]),
      nombre_vulgar(coati), imagen('coati.jpg')).

frame_a(mustela_nivalis,
      subclase_de(mustelinae),
      propiedades([tiene(cuerpo_largo),tiene(bigotes),vive_en(america)]),
      nombre_vulgar(comadreja), imagen('comadreja.jpg')).

frame_a(delphinus_delphis,
      subclase_de(delphinidae),
      propiedades([tiene(espiraculo),tiene(aletas),tiene(inteligencia),vive_en(europa)]),
      nombre_vulgar(delfin), imagen('delfin.jpg')).

frame_a(loxodonta_africana,
      subclase_de(elephantidae),
      propiedades([tiene(trompa),tiene(orejas_grandes),tiene(colmillos),vive_en(africa)]),
      nombre_vulgar(elefante_africano), imagen('elefante_africano.jpg')).

frame_a(elephas_maximus,
      subclase_de(elephantidae),
      propiedades([tiene(trompa),tiene(orejas_grandes),vive_en(asia)]),
      nombre_vulgar(elefante_asiatico), imagen('elefante_asiatico.jpg')).

frame_a(pagophilus_groenlandicus,
      subclase_de(phocidae),
      propiedades([tiene(bigotes),tiene(pelo),vive_en(artico)]),
      nombre_vulgar(foca_pia), imagen('foca_pia.jpg')).

frame_a(felis_silvestris_catus,
      subclase_de(felinae),
      propiedades([tiene(bigotes),tiene(garras),tiene(cola_larga),vive_en(europa)]),
      nombre_vulgar(gato_negro), imagen('gato_negro.jpg')).

frame_a(gorilla_gorilla,
      subclase_de(hominidae),
      propiedades([tiene(pelo),vive_en(africa)]),
      nombre_vulgar(gorila), imagen('gorila.jpg')).

frame_a(acinonyx_jubatus,
      subclase_de(felinae),
      propiedades([tiene(manchas),tiene(garras),tiene(pelaje),vive_en(africa)]),
      nombre_vulgar(guepardo), imagen('guepardo.jpg')).

frame_a(panthera_onca,
      subclase_de(pantherinae),
      propiedades([tiene(manchas),tiene(garras),vive_en(america)]),
      nombre_vulgar(jaguar), imagen('jaguar.jpg')).

frame_a(giraffa_camelopardalis,
      subclase_de(giraffidae),
      propiedades([tiene(cuello_largo),tiene(manchas),vive_en(africa)]),
      nombre_vulgar(jirafa), imagen('jirafa.jpg')).

frame_a(phascolarctos_cinereus,
      subclase_de(phascolarctidae),
      propiedades([tiene(nariz_grande),tiene(pelo),vive_en(oceania)]),
      nombre_vulgar(koala), imagen('koala.jpg')).

frame_a(neophoca_cinerea,
      subclase_de(otariinae),
      propiedades([tiene(aletas),vive_en(oceania)]),
      nombre_vulgar(leon_marino), imagen('leon_marino.jpg')).

frame_a(lama_glama,
      subclase_de(camelinae),
      propiedades([tiene(pelo),tiene(orejas_cortas),vive_en(america)]),
      nombre_vulgar(llama), imagen('llama.jpg')).

frame_a(procyon_lotor,
      subclase_de(procyonidae),
      propiedades([tiene(cola_anillada),tiene(bigotes),tiene(pelo),vive_en(america)]),
      nombre_vulgar(mapache), imagen('mapache.jpg')).

frame_a(mephitis_macroura,
      subclase_de(mephitidae),
      propiedades([tiene(cola_larga),tiene(pelo),vive_en(america)]),
      nombre_vulgar(mofeta), imagen('mofeta.jpg')).

frame_a(odobenus_rosmarus,
      subclase_de(obobenidae),
      propiedades([tiene(colmillos),tiene(aletas),vive_en(artico)]),
      nombre_vulgar(morsa), imagen('morsa.jpg')).

frame_a(pteronura_brasiliensis,
      subclase_de(mustelidae),
      propiedades([tiene(cola_plana),tiene(bigotes),tiene(cuerpo_largo),vive_en(america)]),
      nombre_vulgar(nutria), imagen('nutria.jpg')).

frame_a(pongo_pygmaeus,
      subclase_de(ponginae),
      propiedades([tiene(hocico_grande),vive_en(asia)]),
      nombre_vulgar(orangutan), imagen('orangutan.jpg')).

frame_a(ursus_maritimus,
      subclase_de(ursidae),
      propiedades([tiene(pelo),vive_en(artico)]),
      nombre_vulgar(oso_polar), imagen('oso_polar.jpg')).

frame_a(ailuropoda_melanoleuca,
      subclase_de(ursidae),
      propiedades([tiene(pelo),tiene(orejas_cortas),vive_en(asia)]),
      nombre_vulgar(oso_panda), imagen('oso_panda.jpg')).

frame_a(dachshund,
      subclase_de(canidae),
      propiedades([tiene(cuerpo_largo),tiene(cola_larga),vive_en(europa)]),
      nombre_vulgar(perro_salchicha), imagen('perro_salchicha.jpg')).







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





