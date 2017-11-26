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
               
            }
        }
    }

} 