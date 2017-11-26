page 50120 "Insp. Devices"
{
    PageType = List;
    SourceTable = "Insp. Device";
    CardPageId = "Insp. Device Card";

    layout
    {
        area(content)
        {
            repeater(Group)
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
                
            }
        }
        
    }

    
}