
Zápočtový program na Neprocedurální programování v LS 2022 - Zjednodušený morfologický značkovač

# Špecifikácia

Budem pracovať so zjednodušenými 10-pozičnými značkami, ktoré charakterizujú len menné triedy:
1. Negácia
2. Stupeň
3. Slovný druh
4. Rod
5. Číslo
6. Pád

## Slovný druh

Program rozpoznáva nasledujúce dvojice slovný druh-značka:

- Podstatné meno (n)
- Prídavné meno (a)

Pôvodne boli v pláne aj nasledujúce, no vzhľadom na to že by to bol len ďalší zdĺhavý výčet pravidiel, som sa rozhodla ich vynechať (plus často sa napríklad číslovky skloňujú podľa vzorov pre prídavné mená (redové č.))

- Zámená (z)
- Číslovky (c)

### Podstatné mená (n)

Vzory:
- mužský rod (m)
    - chlap
    - hrdina
    - dub
    - stroj
- stredný rod (s)
    - mesto
    - srdce
    - vysvedčenie
    - dievča
- ženský rod (z):
    - žena
    - ulica
    - dlaň
    - kosť

### Prídavné mená (a)

Vzory:
- pre akostné a vzťahové:
    - pekný
    - cudzí
- pre privlastňovacie:
    - otcov
    - matkin
- živočíšne:
    - páví

#### Zámená (Z)

Rodové - nemajú vzor, budem to musieť hard-codenúť:
- ženské (Z): moja, ona, jej
- mužské (M): môj, on, jeho
- stredné (S): moje, ono

Vzory - pri niektorých nie sú vzory, iné sú neohybné, celkom to celé skomplikuje:

TODO: premyslieť, či chcem vôbec rozlišovať zámená
- pekný
- cudzí
- môj

#### Číslovky (C)
Vzory:
- radové číslovky sa skloňujú podľa príd. mien:
    - pekný
    - cudzí
- základné číslovky:
    - päť, okrem:
        - sto -> mesto
        - tisíc -> stroj
        - milión -> dub
        - miliarda -> žena
        - dva
        - tri
        - štyri

Budem vedieť pracova len so základnými a radovými číslovkami, ostatné nejdú podľa vzoru

## Rod, číslo a pád

Budem ich určovať na základe vzoru, resp. zhody so vzorom (koncovkou)

### Rod

- mužský (m)
- ženský (z)
- stredný (s)

### Číslo
- jednotné (s)
- množné (p)

### Pád

- nominatív (n)
- genitív (g)
- datív (d)
- akuzatív (a)
- lokál (l)
- inštromentál (i)

## Stupeň

- prvý (1)
- druhý (2)
- tretí (3)

Stupeň určujem automaticky podľa koncovky, resp. predpony naj-, nehľadím na to, či ide o prídavné meno, preto podstatné mená majú stupeň 1.

Dalo by sa to vylepšiť tak, že keď zistím, že ide o 2. či 3. stupeň, vyhodím možnosti značiek odpovedajúce podstatným menám.

## Negácia

- nenegované (0)
- negované (1)

Rozlíšim tak, že na začiatku slova (resp. po "naj-") bude predpona "ne-".


# Práca s nástrojom

Nechcem používať slovník lemmat ani kmeňov, preto bude potrebné, aby sa pri zadaní requestu zadalo aj lemma resp. kmeň, inak nebudem vedieť určiť napríklad nominatív, rep. to, kde začína koncovka.

```prolog
?- znacka(Kmen, Slovo, Znacka).
```

# Testovanie

Testovacie dáta sú v súbore `test/testy.txt`