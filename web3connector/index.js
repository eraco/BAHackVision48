var Web3 = require("web3");
var Exp = require('express')

function _d(o) { console.log(o); }

var abiFridge = [{"constant":false,"inputs":[],"name":"giveColaToThomas","outputs":[{"name":"newCola","type":"uint256"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[],"name":"getStock","outputs":[{"name":"stock","type":"uint256"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"add","type":"uint256"}],"name":"fillCola","outputs":[{"name":"newStock","type":"uint256"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"inputs":[],"payable":false,"stateMutability":"nonpayable","type":"constructor"}];
var abiMaintenance = [{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"devices","outputs":[{"name":"name","type":"string"},{"name":"totalUsedHours","type":"uint256"},{"name":"hoursSinceLastInspection","type":"uint256"},{"name":"active","type":"bool"},{"name":"owner","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"deviceId","type":"uint256"},{"name":"newOwner","type":"address"}],"name":"transferOwnership","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"deviceId","type":"uint256"}],"name":"resetInspectionHoursOfDevice","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"deviceId","type":"uint256"}],"name":"getCurrentOwner","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"deviceId","type":"uint256"}],"name":"getHoursSinceLastInspectionById","outputs":[{"name":"hrs","type":"uint256"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"deviceId","type":"uint256"},{"name":"deviceName","type":"string"}],"name":"addDevice","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"deviceId","type":"uint256"}],"name":"getDeviceById","outputs":[{"components":[{"name":"name","type":"string"},{"name":"totalUsedHours","type":"uint256"},{"name":"hoursSinceLastInspection","type":"uint256"},{"name":"active","type":"bool"},{"name":"owner","type":"address"}],"name":"","type":"tuple"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"deviceId","type":"uint256"},{"name":"hoursUsed","type":"uint256"}],"name":"bookUsedHours","outputs":[{"name":"newTotalUsedHours","type":"uint256"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"deviceId","type":"uint256"}],"name":"deactivateDeviceById","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"}];

var provider = new Web3.providers.HttpProvider("http://visionuiwqqf.westeurope.cloudapp.azure.com:8545");
var client = new Web3();
client.setProvider(provider);

var accountId = "0x94734e97f6f627619d1fa7ea5935925e2e08b7dd";

var fc  = new client.eth.Contract(abiFridge,'0x38478939c083ea0723813988ff52418c4be4a5bf');
var dm  = new client.eth.Contract(abiMaintenance,'0x8bbfa08dfdd9447685ff989337297375560e8a1c');

function sendJsonAnswer(res,str) {
    res.setHeader('Content-Type', 'application/json');
    res.send(str);
}

function sendJsonObject(res,o) {
    sendJsonAnswer(res,JSON.stringify(o));
}

var serv = Exp();
serv.get('/givecola/:id', function(req, res) {
    var promise = fc.methods.giveColaToThomas().call();

    promise.then( (result) => {
        sendJsonObject(res,{bestand:result});
    });
    
});

serv.get('/getDeviceOwnerById/:id', function(req, res) {
    var promise = dm.methods.getCurrentOwner().call();

    promise.then( (result) => {
        sendJsonObject(res,{ownerAddress:result});
    });
    
});

serv.get('/test', function(req, res) {
    sendJsonObject(res,{test:true});
});
    
_d("server is running");
serv.listen(3000);

//Nur der Call
// var r = fc.methods.giveColaToThomas().call();
// r.then(_d);

//Transaktion
//r = fc.methods.giveColaToThomas().send({from:accountId,gas:240000});
//r.then(_d);
