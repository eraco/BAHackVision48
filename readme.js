//Transaktion: Eine Cola an Thomas
Fridge.deployed().then(function(f){return f.giveColaToThomas()});

//Call (erzeugt keine Transaktion): Zeigt nur den Bestand an
Fridge.deployed().then(function(f){return f.getStock.call() });

////Devices

//Neues Geraet
MaintenanceContract.deployed().then(function(f){f.addDevice(1,"Rasenmaeher");f.addDevice(2,"Rasentrimmer");});

MaintenanceContract.deployed().then(function(f){ return f.bookUsedHours(1,5) });
MaintenanceContract.deployed().then(function(f){ return f.bookUsedHours(2,7) });
MaintenanceContract.deployed().then(function(f){ return f.bookUsedHours(1,10) });

MaintenanceContract.deployed().then(function(f){ return f.getTotalUsedHoursById.call(1); });
