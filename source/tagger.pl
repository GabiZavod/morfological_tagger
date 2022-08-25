% podstatné mená
% m.r.
% singulár
nmun__(chlap).
nmun__(hrdina).
nmun__(dub).
nmun__(stroj).

nmug__(chlapa).
nmug__(hrdinu).
nmug__().
nmug__().

nmud__().
nmud__(hrdinovi).
nmud__().
nmud__().

nmua__().
nmua__(hrdinu).
nmua__().
nmua__().

nmul__().
nmul__(hrdinovi).
nmul__().
nmul__().

nmui__().
nmui__(hrdinom).
nmui__().
nmui__().

%plurál
nmdn__().
nmdn__(hrdinovia).
nmdn__().
nmdn__().

nmdg__().
nmdg__(hrdinov).
nmdg__().
nmdg__().

nmdd__().
nmdd__(hrdinom).
nmdd__().
nmdd__().

nmda__().
nmda__(hrdinov).
nmda__().
nmda__().

nmdl__().
nmdl__(hrdinoch).
nmdl__().
nmdl__().

nmdi__().
nmdi__().
nmdi__(hrdinami).
nmdi__().

vzor(X, Vzor) :- member(Vzor, [pán, hrad, muž, stroj, predseda, soudce]), souhlasi(X, Vzor)
