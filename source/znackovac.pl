% srcp(Koncovka, Znacka) :- na zaklade koncovky vratim spravnu znacku v poradi SlovnyDruh, Rod, Cislo, Pad.
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
% Koncovka = iach
srcp([i,a,c,h], [n,z,p,l]). % ulicIAMI, dlanIACH, kostIACH
% Koncovka = ách
srcp([á,c,h], [n,z,p,l]). % zenÁCH
srcp([á,c,h], [n,s,p,l]). % mestÁCH
% Koncovka = á 
srcp([á], [n,s,p,n]). % mestÁ
srcp([á], [n,s,p,a]). % mestÁ
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



% koncovka(+Kmen, +Slovo, -Koncovka) :- ak odoberiem zo začiatku Slova Kmen, dostanem Koncovku.
koncovka([], Koncovka, Koncovka).
koncovka([X|_], [Y|_], [x]) :- !.
koncovka([X|Xs], [X|Ys], Koncovka) :-  koncovka(Xs ,Ys, Koncovka).

% negace(+Kmen, +Slovo, -NoveSlovo, -Negace) :- ak zacina Slovo na "ne" a Kmen nie, nastaví Negace na 1 a ako NoveSlovo vrati Slovo bez "ne" na zaciatku, inak nastaví negace na 0 a NoveSlovo bude rovnaké ako Slovo.
negace([X,Y|_], [N,E|SlovoRest], SlovoRest, 1) :- N = 'n', E = 'e', !.
negace(_, Slovo, Slovo, 0).

% znacka(+Kmen, +Slovo, -Znacka)
znacka(Kmen, Slovo, [Negace|Zvysok]) :- string_chars(Kmen, K), string_chars(Slovo,S),
					negace(K, S, NoveS, Negace), koncovka(K, NoveS, Koncovka), 
					srcp(Koncovka, Zvysok).
