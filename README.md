# Bíblia - Les halgabók
Les heilagu skriftirnar á terminalinum, Jákup Dahl týðing.

## Brúksháttur: 
```bash
bíblia [-e][-l][-f][-k][-a] <bók/leitorðið> <kap> <vers>
    [-e] <Enskubøkurnar> <kap> <vers>
    [-l] <lista/leita bøkurnar FØ/EN>
    [-f] <Finn vers/orð>
    [-k] <kjv týðing>
    [-a] <vís alt, Dahl+kjv>
```
### Vanligur brúksháttur
```bash
bíblia [bók] [kap] # finn 'bókina' og vís allan 'kapitulin'
bíblia [bók] [kap] [vers] # finn 'bókina', 'kap' og vís eitt ávíst 'vers'
bíblia [bók] [kap] [vers] [vers] # finn 'bókina', 'kap' og vís 'vers1' til 'vers2'
```
### Leita við enska heitið á bøkurnar
```bash
bíblia -e [bók] [kap] # finn ensku 'bókina' og vís allan 'kapitulin' á føroyskum
bíblia -e [bók] [kap] [vers] # finn ensku 'bókina', 'kap' og vís eitt ávíst 'vers' á føroyskum
bíblia -e [bók] [kap] [vers] [vers] # finn ensku 'bókina', 'kap' og vís 'vers1' til 'vers2' á føroyskum
```
### Lista bøkur (enskt og føroyskt)
```bash
bíblia -l # Lista allar bøkurnar, bæði føroysku og ensku bøkurnar
bíblia -l [bók] # Leita gjøgnum allar listaða bøkurnar, bæði føroysku og ensku bøkurnar
```
### Finn eitt vers ella har eitt orð gongur fram í bíbluni
```bash
bíblia -f "Leiti orð" # Leita gjøgnum øll versini í bíbluni
```
## Dømi 1, vís ein heilan kap:
```
Evangeliið eftir Markus, Kap 3
    bíblia mark 3`
        ....
```
## Dømi 2, vís eitt ávíst vers:
```
Evangeliið eftir Matteus, Kap 15, Vers 8:
    bíblia matt 15 8
        v8 «Hetta fólkið ærir meg við vørrunum; men hjarta teirra er langt burtur frá mær.
```
## Dømi 3, vís ávís vers :
```
Evangeliið eftir Lukas, Kap 4, Vers 18 til Vers 19
    bíblia luk 4 18 19
        v18 «Andi Harrans er yvir mær, av tí at hann hevur salvað meg, til at bera fátækum gleðiboð. Sent hevur hann meg út til at boða fangum frælsi og 
        blindum sjón, til at sleppa neyðstøddum leysum,
        v19 til at kunngera eitt Harrans náðiár.»
```
## Dømi 4, vís ávís vers :
```
Proverbs, Kap 3, Vers 14 til Vers 16
    bíblia -e pro 3 14 16
        EN: Proverbs
        FO: Orðtøk Sálomons
        v14 Tí at betri er hana at vinna enn silvur at vinna, og at ognast hana meiri enn gull.
        v15 Dýrmætari er hon enn perlur, allir dýrgripir tínir kunnu ei metast javnt við hana.
        v16 Eitt langt lív er í hennara høgru hond, ríkidømi og æra í vinstru.
```
## Dømi 5, vís ein heilan kap/sálm:
```
Sálmarnir, sálmur 108
    bíblia sálm 108
        ...
```
## Dømi 6, vel røttu bók, um ikki skrivað neyvt nokk:
```
Evangeliið eftir Jóhannes, Kap 3, Vers 16 til Vers 18
    bíblia jóhan 3 16 18
            1) Evangeliið eftir Jóhannes		3) Annað bræv Jóhannesar		5) Jóhannesar opinbering
            2) Hitt fyrsta almenna bræv Jóhannesar	4) Triðja bræv Jóhannesar
    Choose a book (enter number): 1
        v16 Tí at so elskaði Guð heimin, at hann gav son sín, hin einborna, til tess at ein og hvør, sum trýr á hann, ikki skal glatast, men hava ævigt lív.
        v17 Tí at ikki sendi Guð sonin í heimin, til tess at hann skal døma heimin, men til tess at heimurin skal verða frelstur við honum.
        v18 Tann, sum trýr á hann, verður ikki dømdur. Tann, sum ikki trýr, er longu dømdur, við tað at hann ikki hevur trúð á navn hins einborna Guðs 
        sonar.
```
## Dømi 7, Finn ein ávísan setning ella orð:
```
    bíblia -f "Hetta fólkið ærir meg við vørrunum"
        Evangeliið eftir Matteus 15 v8 «Hetta fólkið ærir meg við vørrunum; men hjarta teirra er langt burtur frá mær.
        Evangeliið eftir Markus 7 v6 Men hann segði við teir: «Beint hevur Jesaja profeterað um tykkum, tykkara falsarar, soleiðis sum skrivað stendur:     
        «Hetta fólkið ærir meg við vørrunum; men hjarta teirra er langt burtur frá mær.

```    
