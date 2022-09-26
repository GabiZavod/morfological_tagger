% srcp(Koncovka, Znacka) :- na zaklade koncovky vratim spravnu znacku v poradi SlovnyDruh, Rod, Cislo, Pad.
%%%% Podstatné mená %%%%
% Koncovka = a
srcp([a], [n,m,s,g]). % chlapA, dubA, strojA
srcp([a], [n,m,s,a]). % chlapA
srcp([a], [n,m,s,n]). % hrdinA
srcp([a], [n,z,s,n]). % zenA, ulicA
srcp([a], [n,s,s,g]). % mestA, srdcA
% Koncovka = ovi
srcp([o,v,i], [n,m,s,d]). % chlapOVI, hrdinOVI
srcp([o,v,i], [n,m,s,l]). % chlapOVI, hrdinOVI
% Koncovka = []
srcp([], [n,m,s,n]). % chlap, dub, stroj
srcp([], [n,m,s,a]). % dub, stroj
srcp([], [n,z,s,n]). % dlan, kost
srcp([], [n,z,s,a]). % dlan, kost
srcp([], [n,s,s,n]). % dievča
srcp([], [n,s,s,a]). % dievča
% Koncovka = om
srcp([o,m], [n,m,s,i]). % chlapOM, hrdinOM, dubOM, strojOm
srcp([o,m], [n,m,p,d]). % chlapOM, hrdinOM, dubOM, strojOM
srcp([o,m], [n,s,s,i]). % mestOM, srdcOM
% Koncovka = u
srcp([u], [n,m,s,g]). % hrdinU
srcp([u], [n,m,s,d]). % dubU, strojU
srcp([u], [n,m,s,a]). % hrdinU
srcp([u], [n,z,s,a]). % zenU, ulicU
srcp([u], [n,s,s,d]). % mestU, srdcU
% Koncovka = e
srcp([e], [n,m,s,l]). % dubE
srcp([e], [n,m,p,n]). % strojE
srcp([e], [n,m,p,a]). % strojE
srcp([e], [n,z,s,g]). % ulicE, dlanE
srcp([e], [n,z,s,l]). % zenE
srcp([e], [n,z,s,d]). % zenE
srcp([e], [n,z,p,n]). % ulicE, dlanE
srcp([e], [n,z,p,a]). % ulicE, dlanE
srcp([e], [n,s,s,n]). % srdcE
srcp([e], [n,s,s,a]). % srdcE
srcp([e], [n,s,s,l]). % mestE
% Koncovka = i
srcp([i], [n,m,s,l]). % strojI
srcp([i], [n,m,p,n]). % chlapI
srcp([i], [n,z,s,g]). % kostI
srcp([i], [n,z,s,d]). % ulicI, dlanI, kostI
srcp([i], [n,z,s,l]). % ulicI, dlanI, kostI
srcp([i], [n,z,p,n]). % kostI
srcp([i], [n,z,p,a]). % kostI
srcp([i], [n,s,s,l]). % srdcI
% Koncovka = í
srcp([í], [n,z,p,g]). % dlanÍ, kostÍ
srcp([í], [n,s,s,l]). % vysvedčenÍ
srcp([í], [n,s,p,g]). % vysvedčenÍ
% Koncovka = ov
srcp([o,v], [n,m,p,g]). % chlapOV, hrdinOV, dubOV, strojOV
srcp([o,v], [n,m,p,a]). % chlapOV, hrdinOV
% Koncovka = och
srcp([o,c,h], [n,m,p,l]). %chlapOCH, hrdinOCH, dubOCH, strojOCH
% Koncovka = mi
srcp([m,i], [n,m,p,i]). % chlapMI, dubMI, strojMI
% Koncovka = ami
srcp([a,m,i], [n,m,p,i]). % hrdinAMI
srcp([a,m,i], [n,z,p,i]). % zenAMI, ulicAMI, dlanAMI, kostAMI
srcp([a,m,i], [n,s,p,i]). % mestAMI, srdcAMI
% Koncovka = ovia
srcp([o,v,i,a], [n,m,p,n]). % hrdinOVIA
% Koncovka = y
srcp([y], [n,m,p,n]). % dubY
srcp([y], [n,m,p,a]). % dubY
srcp([y], [n,z,p,n]). % zenY
srcp([y], [n,z,p,a]). % zenY
% Koncovka = ou
srcp([o,u], [n,z,s,i]). % zenOU, ulicOU, dlanOU, kostOU
% Koncovka = iam
srcp([i,a,m], [n,z,p,d]). % ulicIAM, dlanIAM, kostIAM
srcp([i,a,m], [n,s,p,d]). % srdcIAM, visvedčenIAM
% Koncovka = ám
srcp([á,m], [n,z,p,d]). % zenÁM
srcp([á,m], [n,s,p,d]). % mestÁM
% Koncovka = am
srcp([a,m], [n,z,p,d]). % zenÁM (rytmické krátenie - čiarkam)
srcp([a,m], [n,s,p,d]). % mestÁM (rytmické krátenie - miestam)
% Koncovka = iach
srcp([i,a,c,h], [n,z,p,l]). % ulicIAMI, dlanIACH, kostIACH
% Koncovka = ách
srcp([á,c,h], [n,z,p,l]). % zenÁCH
srcp([á,c,h], [n,s,p,l]). % mestÁCH
% Koncovka = ach
srcp([a,c,h], [n,z,p,l]). % zenÁCH (rytmické krátenie - čiarkach)
srcp([a,c,h], [n,s,p,l]). % mestÁCH (rytmické krátenie - miestach)
% Koncovka = á 
srcp([á], [n,s,p,n]). % mestÁ
srcp([á], [n,s,p,a]). % mestÁ
% Koncovka = a
srcp([a], [n,s,p,n]). % mestÁ (miesta)
srcp([a], [n,s,p,a]). % mestÁ
% Koncovka = ia
srcp([i,a], [n,s,p,n]). % srdcIA, vysvedčenIA
srcp([i,a], [n,s,p,a]). % srdcIA, vysvedčenIA
srcp([i,a], [n,s,s,g]). % vysvedčenIA
% Koncovka = iach
srcp([i,a,c,h], [n,s,p,l]). % srdcIACH, vysvedčenIACH
% Koncovka = ie
srcp([i,e], [n,s,s,n]). % vysvedčenIE
srcp([i,e], [n,s,s,a]). % vysvedčenIE
% Koncovka = iu
srcp([i,u], [n,s,s,d]). % vysvedčenIU
% Koncovka = ím
srcp([í,m], [n,s,s,i]). % vysvedčenÍM
% Koncovka = iami
srcp([i,a,m,i], [n,s,p,i]). % vysvedčenIAMI
% Koncovka = ťa
srcp([ť,a], [n,s,s,g]). % dievčaŤA
% Koncovka = ťu
srcp([ť,u], [n,s,s,d]). % dievčaŤU
% Koncovka = ti
srcp([t,i], [n,s,s,l]). % dievčaTI
% Koncovka = ťom
srcp([ť,o,m], [n,s,s,i]). % dievčaŤOM
% Koncovka = tá
srcp([t,á], [n,s,p,n]). % dievčaTÁ
srcp([t,á], [n,s,p,a]). % dievčaTÁ
% Koncovka = t
srcp([t], [n,s,p,g]). % dievčaT
% Koncovka = tám
srcp([t,á,m], [n,s,p,d]). % dievčaTÁM
% Koncovka = tách
srcp([t,á,c,h], [n,s,p,l]). % dievčaTÁCH
% Koncovka = tami
srcp([t,a,m,i], [n,s,p,i]). % dievčaTAMI

% Zmena v kmeni - ako koncovka má uložené [x] - mala by nastať len v týchto prípadoch
% TODO: zistiť, či nie sú aj iné prípady
srcp([x], [n,s,p,g]). % miest, sŕdc
srcp([x], [n,z,p,g]). % žien, ulíc

%%%% Pridavne mena %%%%
% Koncovka = ý
srcp([ý], [a,m,s,n]). % peknÝ
srcp([ý], [a,m,s,a]). % peknÝ
% Koncovka = y
srcp([y], [a,m,s,n]). % peknÝ (rytm.k.)
srcp([y], [a,m,s,a]). % peknÝ (rytm.k.)
% Koncovka = á
srcp([á], [a,z,s,n]). % peknÁ
% Koncovka = a
srcp([a], [a,z,s,n]). % peknÁ (rytm.k.), otcova
% Koncovka = ú
srcp([ú], [a,z,s,a]). % peknÚ
% Koncovka = u
srcp([u], [a,z,s,a]). % peknÚ (rytm.k.), otcovu
% Koncovka = é
srcp([é], [a,s,s,n]). % peknÉ
srcp([é], [a,s,s,a]). % peknÉ
srcp([é], [a,s,p,n]). % peknÉ
srcp([é], [a,m,p,n]). % peknÉ
srcp([é], [a,s,p,a]). % peknÉ
srcp([é], [a,m,p,a]). % peknÉ
srcp([é], [a,z,p,n]). % peknÉ
srcp([é], [a,z,p,a]). % peknÉ
% Koncovka = e
srcp([e], [a,s,s,n]). % peknÉ (r.k.)
srcp([e], [a,s,s,a]). % peknÉ (r.k.)
srcp([e], [a,s,p,n]). % peknÉ (r.k.), otcove
srcp([e], [a,m,p,n]). % peknÉ (r.k.), otcove
srcp([e], [a,s,p,a]). % peknÉ (r.k.), otcove
srcp([e], [a,m,p,a]). % peknÉ (r.k.), otcove
srcp([e], [a,z,p,n]). % peknÉ (r.k.), otcove
srcp([e], [a,z,p,a]). % peknÉ (r.k.), otcove
% Koncovka = í
srcp([í], [a,m,s,n]). % cudzÍ
srcp([í], [a,m,s,a]). % cudzÍ
srcp([í], [a,m,p,n]). % peknÍ, cudzÍ
% Koncovka = i
srcp([i], [a,m,s,n]). % cudzÍ (r.k.)
srcp([i], [a,m,s,a]). % cudzÍ (r.k.)
srcp([i], [a,m,p,n]). % peknÍ, cudzÍ (r.k.), otcovi
% Koncovka = ých
srcp([ý,c,h], [a,m,p,g]). %peknÝCH
srcp([ý,c,h], [a,z,p,g]). %peknÝCH
srcp([ý,c,h], [a,s,p,g]). %peknÝCH
srcp([ý,c,h], [a,m,p,a]). %peknÝCH
srcp([ý,c,h], [a,m,p,l]). %peknÝCH
srcp([ý,c,h], [a,z,p,l]). %peknÝCH
srcp([ý,c,h], [a,s,p,l]). %peknÝCH
% Koncovka = ych
srcp([y,c,h], [a,m,p,g]). %peknÝCH (r.k.)
srcp([y,c,h], [a,z,p,g]). %peknÝCH (r.k.)
srcp([y,c,h], [a,s,p,g]). %peknÝCH (r.k.)
srcp([y,c,h], [a,m,p,a]). %peknÝCH (r.k.)
srcp([y,c,h], [a,m,p,l]). %peknÝCH (r.k.)
srcp([y,c,h], [a,z,p,l]). %peknÝCH (r.k.)
srcp([y,c,h], [a,s,p,l]). %peknÝCH (r.k.)
% Koncovka = ého
srcp([é,h,o], [a,m,s,g]). % peknÉHO
srcp([é,h,o], [a,s,s,g]). % peknÉHO
srcp([é,h,o], [a,m,s,a]). % peknÉHO
% Koncovka = ému
srcp([é,m,u], [a,m,s,d]). % peknÉMU
srcp([é,m,u], [a,s,s,d]). % peknÉMU
% Koncovka = eho
srcp([e,h,o], [a,m,s,g]). % peknÉHO, súcEHO(r.k.)
srcp([e,h,o], [a,s,s,g]). % peknÉHO, súcEHO(r.k.)
srcp([e,h,o], [a,m,s,a]). % peknÉHO, súcEHO(r.k.)
% Koncovka = emu
srcp([e,m,u], [a,m,s,d]). % peknÉMU, súcEMU(r.k.)
srcp([e,m,u], [a,s,s,d]). % peknÉMU, súcEMU(r.k.)
% Koncovka = om
srcp([o,m], [a,m,s,l]). % peknOM, cudzOM
srcp([o,m], [a,s,s,l]). % peknOM, cudzOM
% Koncovka = ým
srcp([ý,m], [a,m,s,i]).
srcp([ý,m], [a,s,s,i]).
srcp([ý,m], [a,m,p,d]).
srcp([ý,m], [a,z,p,d]).
srcp([ý,m], [a,s,p,d]).
% Koncovka = ými
srcp([ý,m,i], [a,m,p,i]). % peknÝMI
srcp([ý,m,i], [a,z,p,i]). % peknÝMI
srcp([ý,m,i], [a,s,p,i]). % peknÝMI
% Koncovka = ym
srcp([y,m], [a,m,s,i]).
srcp([y,m], [a,s,s,i]).
srcp([y,m], [a,m,p,d]).
srcp([y,m], [a,z,p,d]).
srcp([y,m], [a,s,p,d]).
% Koncovka = ymi
srcp([y,m,i], [a,m,p,i]). % peknÝMI
srcp([y,m,i], [a,z,p,i]). % peknÝMI
srcp([y,m,i], [a,s,p,i]). % peknÝMI
% Koncovka = ej
srcp([e,j], [a,z,s,g]). % peknEJ, cudzEJ
srcp([e,j], [a,z,s,d]). % peknEJ, cudzEJ
srcp([e,j], [a,z,s,l]). % peknEJ, cudzEJ
% Koncovka = ou
srcp([o,u], [a,z,s,i]). %peknOU, cudzOU
% Koncovka = ia
srcp([i,a], [a,z,s,n]). % cudzIA
% Koncovka = iu
srcp([i,u], [a,z,s,a]). % cudzIU
% Koncovka = ie
srcp([i,e], [a,s,s,n]). % cudzIE
srcp([i,e], [a,s,s,a]). % cudzIE
srcp([i,e], [a,z,p,n]). % cudzIE
srcp([i,e], [a,s,p,n]). % cudzIE
srcp([i,e], [a,z,p,a]). % cudzIE
srcp([i,e], [a,s,p,a]). % cudzIE
% Koncovka = ieho
srcp([i,e,h,o], [a,m,s,g]). % cudzIEHO
srcp([i,e,h,o], [a,s,s,g]). % cudzIEHO
% Koncovka = iemu
srcp([i,e,m,u], [a,m,s,d]). %cudzIEMU
srcp([i,e,m,u], [a,s,s,d]). %cudzIEMU
% Koncovka = ím
srcp([í,m], [a,m,s,i]). % cudzÍM
srcp([í,m], [a,s,s,i]). % cudzÍM
srcp([í,m], [a,m,p,d]). % cudzÍM
srcp([í,m], [a,z,p,d]). % cudzÍM
srcp([í,m], [a,s,p,d]). % cudzÍM
% Koncovka = im
srcp([i,m], [a,m,s,i]). % cudzÍM (r.k.)
srcp([i,m], [a,s,s,i]). % cudzÍM (r.k.)
srcp([i,m], [a,m,p,d]). % cudzÍM (r.k.)
srcp([i,m], [a,z,p,d]). % cudzÍM (r.k.)
srcp([i,m], [a,s,p,d]). % cudzÍM (r.k.)
% Koncovka = ích
srcp([í,c,h], [a,m,p,g]). % cudzÍCH
srcp([í,c,h], [a,z,p,g]). % cudzÍCH
srcp([í,c,h], [a,s,p,g]). % cudzÍCH
srcp([í,c,h], [a,m,p,a]). % cudzÍCH
srcp([í,c,h], [a,m,p,l]). % cudzÍCH
srcp([í,c,h], [a,z,p,l]). % cudzÍCH
srcp([í,c,h], [a,s,p,l]). % cudzÍCH
% Koncovka = ich
srcp([i,c,h], [a,m,p,g]). % cudzÍCH (r.k.)
srcp([i,c,h], [a,z,p,g]). % cudzÍCH (r.k.)
srcp([i,c,h], [a,s,p,g]). % cudzÍCH (r.k.)
srcp([i,c,h], [a,m,p,a]). % cudzÍCH (r.k.)
srcp([i,c,h], [a,m,p,l]). % cudzÍCH (r.k.)
srcp([i,c,h], [a,z,p,l]). % cudzÍCH (r.k.)
srcp([i,c,h], [a,s,p,l]). % cudzÍCH (r.k.)
% Koncovka = ími
srcp([í,m,i], [a,m,p,i]). % cudzÍMI
srcp([í,m,i], [a,z,p,i]). % cudzÍMI
srcp([í,m,i], [a,s,p,i]). % cudzÍMI
% Koncovka = imi
srcp([i,m,i], [a,m,p,i]). % cudzÍMI (r.k.)
srcp([i,m,i], [a,z,p,i]). % cudzÍMI (r.k.)
srcp([i,m,i], [a,s,p,i]). % cudzÍMI (r.k.)
% Koncovka = []
srcp([],[a,m,s,n]). % otcov
srcp([],[a,m,s,a]). % otcov
% Koncovka = o
srcp([o], [a,s,s,n]). % otcovO
srcp([o], [a,s,s,a]). % otcovO
% Koncovka = mu
srcp([m,u], [a,m,s,d]). % otcovMU
srcp([m,u], [a,s,s,d]). % otcovMU
% Koncovka = ho
srcp([h,o], [a,m,s,g]). % otcovHO
srcp([h,o], [a,m,s,a]). % otcovHO
srcp([h,o], [a,s,s,g]). % otcovHO




% negace(+Kmen, +Slovo, -NoveSlovo, -Negace) :- ak zacina Slovo na "ne" a Kmen nie, nastaví Negace na 1 a ako NoveSlovo vrati Slovo bez "ne" na zaciatku, inak nastaví negace na 0 a NoveSlovo bude rovnaké ako Slovo.
negace([X,Y|_], [n,a,j,N,E|SlovoRest], [n,a,j|SlovoRest], 1) :- X \= N, Y \= E, N = 'n', E = 'e', !.
negace([n,e|KmenRest], [n,e|SlovoRest], [n,e|NoveSlovo], Neg) :- write(tady), negace(KmenRest, SlovoRest,NoveSlovo,Neg), !.
negace([X,Y|_], [n,e|SlovoRest], SlovoRest, 1) :- X \= n, Y \= e, !.
negace([X,Y|_], [n,e|SlovoRest], SlovoRest, 1) :- X \= n, Y = e, !.
negace([X,Y|_], [n,e|SlovoRest], SlovoRest, 1) :- X = n, Y \= e, !.
negace(_, Slovo, Slovo, 0).

% ejs(+Kmen, +Slovo) :- po Kmeni nasleduje v Slove "ejš" alebo "š".
ejs([], [š|_]) :- !.
ejs([], [e,j,š|_]) :- !.
ejs([K|RestKmen], [S|RestSlovo]) :- K = S, ejs(RestKmen, RestSlovo).

% odoberEJS(+Kmen, +Slovo, -NoveSlovo) :- odoberie "ejš" zpoza kmeňa (aby som vedela správne určiť koncovku).
odoberEJS([], [š|Rest], Rest) :- !.
odoberEJS([], [e,j,š|Rest], Rest) :- !.
odoberEJS([X|KmenRest], [Y|SlovoRest], [Y|Koncovka]) :- X = Y, odoberEJS(KmenRest, SlovoRest, Koncovka).

% stupen(+Kmen, +Slovo, -Stupen, -NoveSlovo, -SlovDruh) :- ak ide o 2. alebo 3. stupeň, vynúti adjective.
stupen(Kmen, [n,a,j|SlovoRest], 3, NoveSlovo, a) :- ejs(Kmen, SlovoRest),
						 odoberEJS(Kmen, SlovoRest, NoveSlovo), !.
stupen(Kmen, Slovo, 2, NoveSlovo, a) :- ejs(Kmen, Slovo), odoberEJS(Kmen, Slovo, NoveSlovo), !.
stupen(_,Slovo,1,Slovo,_).

% koncovka(+Kmen, +Slovo, -Koncovka) :- ak odoberiem zo začiatku Slova Kmen, dostanem Koncovku.
koncovka([], Koncovka, Koncovka).
koncovka([X|_], [Y|_], [x]) :- X \= Y.
koncovka([X|Xs], [X|Ys], Koncovka) :-  koncovka(Xs ,Ys, Koncovka).

% znacka(+Kmen, +Slovo, -Znacka) :- vráti značku slova.
znacka(Kmen, Slovo, [Negace, Stupen, SlovDruh, Rod, Cislo, Pad]) :- string_chars(Kmen, K), string_chars(Slovo,S),
					negace(K, S, NoveS, Negace), stupen(K, NoveS, Stupen, NovsieS, SlovDruh),
					koncovka(K, NovsieS, Koncovka), 
					srcp(Koncovka, [SlovDruh,Rod,Cislo,Pad]).
