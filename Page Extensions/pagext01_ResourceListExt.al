pageextension 50101 "CSD Resource List Ext" extends "Resource List"
{
    layout
    {
        addlast(Content)
        {
            field("CSD Resource Type";"CSD Resource Type")
            {
                
            }
            field("CSD Maximum Participants";"CSD Maximum Participants")
            {

            }
            field("CSD Quantity Per Day";"CSD Quantity Per Day")
            {

            }
        }
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;
}