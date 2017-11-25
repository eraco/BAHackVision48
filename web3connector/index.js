var Web3 = require("web3");

function _d(o) { console.log(o); }

var abiFridge = [{"constant":false,"inputs":[],"name":"giveColaToThomas","outputs":[{"name":"newCola","type":"uint256"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[],"name":"getStock","outputs":[{"name":"stock","type":"uint256"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"add","type":"uint256"}],"name":"fillCola","outputs":[{"name":"newStock","type":"uint256"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"inputs":[],"payable":false,"stateMutability":"nonpayable","type":"constructor"}];
var abiMaintenance = [{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"devices","outputs":[{"name":"name","type":"string"},{"name":"totalUsedHours","type":"uint256"},{"name":"hoursSinceLastInspection","type":"uint256"},{"name":"active","type":"bool"},{"name":"owner","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"deviceId","type":"uint256"},{"name":"newOwner","type":"address"}],"name":"transferOwnership","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"deviceId","type":"uint256"}],"name":"resetInspectionHoursOfDevice","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"deviceId","type":"uint256"}],"name":"getCurrentOwner","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"deviceId","type":"uint256"},{"name":"deviceName","type":"string"}],"name":"addDevice","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"deviceId","type":"uint256"},{"name":"hoursUsed","type":"uint256"}],"name":"bookUsedHours","outputs":[{"name":"newTotalUsedHours","type":"uint256"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"deviceId","type":"uint256"}],"name":"deactivateDeviceById","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"}];

var provider = new Web3.providers.HttpProvider("http://visionuiwqqf.westeurope.cloudapp.azure.com:8545");
var client = new Web3();
client.setProvider(provider);
//var base = client.eth.getCoinbase().then(_d);
//client.eth.getAccounts().then(_d);

var fc  = new client.eth.Contract(abiFridge,'0x38478939c083ea0723813988ff52418c4be4a5bf');
var r = fc.methods.giveColaToThomas().call();
r.then(_d);


