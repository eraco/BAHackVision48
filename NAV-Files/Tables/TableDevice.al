table 50120 "Insp. Device"
{

    fields
    {
        field(1;"No.";Integer){}
        
        field(11;"Name";Text[50]){} 

        field(12;"Total Used";Integer)
        {
           Editable = False;              
        }
        field(13;"Hours Since Last Insp.";Integer)
        {
            Editable = False; 
        }
    }

    keys
    {
        key("No.";"No.")
        {
            Clustered = true;
        }
    }
        
}