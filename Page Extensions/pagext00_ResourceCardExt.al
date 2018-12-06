pageextension 50100 "CSD Resource Card Ext" extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Quantity Per Day"; "CSD Quantity Per Day")
            {

            }
        }
        addlast(Content)
        {
            group("CSD Room")
            {
                Visible = ShowRoom;
                Caption = 'Room';
                field("CSD Maximum Participants"; "CSD Maximum Participants")
                {

                }
            }
        }
    }

    var
        [InDataSet]
        ShowRoom: Boolean;

    trigger OnAfterGetRecord()
    begin
        ShowRoom := (Type = Type::Machine);
    end;
}