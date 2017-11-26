codeunit 50121 CU_DeviceUpdate
{    
    trigger OnRun();
    begin
    end;
    
    PROCEDURE OnNavAppUpgradePerCompany();
    BEGIN
        NAVAPP.RESTOREARCHIVEDATA(50120,False);
    
    END;

    PROCEDURE OnNavAppUpgradePerDatabase();
    BEGIN
    END;
   
}