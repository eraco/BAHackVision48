pageextension 50123 ItemAction extends "Item Card"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addlast("Bill of Materials")
        {   
            action("Show Devices")
            {
                RunObject = Page "Insp. Devices";
                Image = CheckDuplicates;
                Promoted = true;
                ApplicationArea = All; 
                RunPageMode = Edit;
            }
        }
    }
    
    
}