# Bíblia, Halgabók
Les heilagu skriftirnar á terminalinum, Jákup Dahl týðing.

## Brúksháttur: 
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
```
## Dømi 2, vís eitt ávíst vers:
```
Evangeliið eftir Matteus, Kap 3, Vers 16:
    bíblia matt 3 16
```
## Dømi 3, vís ávís vers :
```
Evangeliið eftir Lukas, Kap 4, Vers 15 til Vers 19
    bíblia luk 4 15 19
```
## Dømi 4, vís ein heilan kap/sálm:
```
Sálmarnir, sálmur 108
    bíblia sálm 108
```
## Dømi 5, vel røttu bók, um ikki skrivað neyvt nokk:
```
Evangeliið eftir Jóhannes, Kap 1, Vers 12 til Vers 24
    bíblia jóhan 1 12 24
            1) Evangeliið eftir Jóhannes		3) Annað bræv Jóhannesar		5) Jóhannesar opinbering
            2) Hitt fyrsta almenna bræv Jóhannesar	4) Triðja bræv Jóhannesar
    Choose a book (enter number): 1
```
## Dømi 6, Finn ein ávísan setning ella orð:
```
    bíblia -f "Hetta fólkið ærir meg við vørrunum"
        Evangeliið eftir Matteus 15 v8 «Hetta fólkið ærir meg við vørrunum; men hjarta teirra er langt burtur frá mær.
        Evangeliið eftir Markus 7 v6 Men hann segði við teir: «Beint hevur Jesaja profeterað um tykkum, tykkara falsarar, soleiðis sum skrivað stendur:     
        «Hetta fólkið ærir meg við vørrunum; men hjarta teirra er langt burtur frá mær.

```    
