# morfological_tagger

Zápočtový program na Neprocedurální programování v LS 2022 - Zjednodušený morfologický značkovač

# Špecifikácia

Budem pracovať so zjednodušenými 10-pozičnými značkami, ktoré charakterizujú len menné triedy:
1. Slovný druh
2. Rod
3. Číslo
4. Pád
5. Stupeň
6. Privlastňovací rod
7. Privlastňovacie číslo
8. Negácia

tbh, nie som si úplne istá, čo robí 6. a 7., možno to tiež vynechám.

## Slovný druh

Program bude rozlišovať nasledujúce dvojice slovný druh-značka:

Podstatné meno-N
Prídavné meno-P
Zámená-Z
Číslovky-C

### Podstatné mená (N)

Vzory:
- mužský rod (M)
    - chlap
    - hrdina
    - dub
    - stroj
- stredný rod (S)
    - mesto
    - srdce
    - vysvedčenie
    - dievča
- ženský rod (Z):
    - žena
    - ulica
    - dlaň
    - kosť

### Prídavné mená (P)

Vzory:
- pre akostné a vzťahové:
    - pekný
    - cudzí
- pre privlastňovacie:
    - otcov
    - matkin
- živočíšne:
    - páví

### Zámená (Z)

Rodové - nemajú vzor, budem to musieť hard-codenúť:
- ženské (Z): moja, ona, jej
- mužské (M): môj, on, jeho
- stredné (S): moje, ono

Vzory - pri niektorých nie sú vzory, iné sú neohybné, celkom to celé skomplikuje:

TODO: premyslieť, či chcem vôbec rozlišovať zámená
- pekný
- cudzí
- môj

### Číslovky (C)
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

Budem ich určovať na základe vzoru, resp. zhody so vzorom

### Rod

- mužský (M)
- ženský (Z)
- stredný (S)

### Číslo
- jednotné (U)
- množné (D)

## Stupeň

- prvý (1)
- druhý (2)
- tretí (3)

Určovaný len pri prídavných menách, tj. pri vzoroch pekný a cudzí
-> pozor na to, že ostatné veci, ktoré skloňujem podľa vzoru pekný, cudzí, neviem stupňovať
-> ak je druhý/tretí stupeň, viem jednoznačne, že ide o prídavné meno

## Negácia

- nenegované (+)
- negované (-)

Rozlíšim tak, že na začiatku slova (resp. po "naj-") bude predpona "ne-", aplikujem len pri prídavných menách
