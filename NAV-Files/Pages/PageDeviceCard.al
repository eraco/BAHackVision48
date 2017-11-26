page 50121 "Insp. Device Card"
{
    PageType = Card;
    SourceTable = "Insp. Device";

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No.";"No.")
                {
                   
                   ApplicationArea = all;
                }
                
                field(Name;Name)
                {
                   
                   ApplicationArea = all;
                }

                field("Total Used";"Total Used")
                {
                     ApplicationArea = all;
                     Editable = False; 
                }
               
                field("Hours Since Last Insp.";"Hours Since Last Insp.") 
                {
                    ApplicationArea = all;
                    Editable = False; 
                }
                field("Actual Owner";"Actual Owner")
                {
                    ApplicationArea = all;
                    Editable = False; 
                }
               
            }
        }
    }
    actions
    {
        area(processing)
        {
                        action("Get Actual Owner ID")
             {   
                Image = CheckDuplicates;
                Promoted = true;
                ApplicationArea = All; 
            
                trigger OnAction();
                var 
                WebServiceBlock : Codeunit BlockChainWebservice; 
                
                begin
                  
                  
                  WebServiceBlock.CallWebserviceGetOwnerByID("No.","No.");
                  
                    
                end;
            }
            Action("Add Device")
             {   
                Image = CheckDuplicates;
                Promoted = true;
                ApplicationArea = All; 
            
                trigger OnAction();
                var 
                WebServiceBlock : Codeunit BlockChainWebservice; 
                
                begin 
                  WebServiceBlock.CallWebserviceAdddevice("No.","No.",Name);                    
                end;
            }
            
            Action("Get Service Hours")
             {   
                Image = CheckDuplicates;
                Promoted = true;
                ApplicationArea = All; 
            
                trigger OnAction();
                var 
                WebServiceBlock : Codeunit BlockChainWebservice; 
                
                begin 
                  WebServiceBlock.CallWebservicegetHoursSinceLastInspectionById("No.","No.");  
                                
                end;
            }
             Action("Reset Service Hours")
             {   
                Image = CheckDuplicates;
                Promoted = true;
                ApplicationArea = All; 
            
                trigger OnAction();
                var 
                WebServiceBlock : Codeunit BlockChainWebservice; 
                
                begin 
                  WebServiceBlock.CallWebserviceresetInspectionHoursOfDevice("No.","No.");  
                                
                end;
            }
        }
    }

} 