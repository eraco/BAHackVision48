# BAHackVision 48

## Sinn

SmartContract-Projekt

## Lokale Entwicklung

truffle compile  
truffle develop (neue Schnell)  
truffle migrate --reset  

```JavaScript

//Transaktion: Eine Cola an Thomas
Fridge.deployed().then(function(f){return f.giveColaToThomas()});

//Call (erzeugt keine Transaktion): Zeigt nur den Bestand an
Fridge.deployed().then(function(f){return f.getStock.call() });
```
## Bereitstellen auf azure
truffle migrate --network azure
