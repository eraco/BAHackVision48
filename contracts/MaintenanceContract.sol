pragma solidity ^0.4.17;

/*
* Vertrag fuer eine Menge an Geraeten
*/
contract MaintenanceContract {

    //Entitaet: Unsere Geraet
    struct Device {
        string name;
        uint totalUsedHours;
        uint hoursSinceLastInspection;
        bool active;
        address owner;

    }

    mapping (uint => Device) public devices;

    //erzeugt ein neues Geraet, ID muss eindeutig sein und darf vorher nicht existieren
    function addDevice(uint deviceId, string deviceName) public {
        devices[deviceId] = Device(deviceName,0,0,true,msg.sender);
    }

    function bookUsedHours(uint deviceId, uint hoursUsed) public returns (uint newTotalUsedHours) {
        Device storage d = devices[deviceId];
        d.totalUsedHours = d.totalUsedHours + hoursUsed;
        d.hoursSinceLastInspection = d.hoursSinceLastInspection + hoursUsed;
        //devices[deviceId] = d;
        return d.totalUsedHours;
    }

    function resetInspectionHoursOfDevice(uint deviceId) public {
        devices[deviceId].hoursSinceLastInspection = 0;
    }

    /*function getTotalUsedHoursById(uint deviceId) public returns (uint totalUsedHours) {
        return devices[deviceId].totalUsedHours; 
    }*/

    function deactivateDeviceById(uint deviceId) public {
        devices[deviceId].active = false;
    }

    //uebertraegt ownership an neue adresse, sender muss aktueller owner sein
    function transferOwnership(uint deviceId, address newOwner) public {
        if (devices[deviceId].owner == msg.sender) {
            if (newOwner != 0x0) {
              devices[deviceId].owner = newOwner;  
            }
        }
    }

    function getCurrentOwner(uint deviceId) public returns(address) {
        return devices[deviceId].owner;
    }
}
