tableextension 50100 "CSD Resource Ext" extends Resource
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                TestField("Unit Cost");
            end;
        }
        modify(Type)
        {
            OptionCaption = 'Instructor,Room';
        }
        field(50101; "CSD Resource Type"; Option)
        {
            Caption = 'Resource Type';
            DataClassification = CustomerContent;
            OptionMembers = Internal,External;
            OptionCaption = 'Internal,External';
        }
        field(50102; "CSD Maximum Participants"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Maximum Participants';
        }
        field(50103; "CSD Quantity Per Day"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Quantity Per Day';
        }
    }
    keys
    {
        key("CSD Key1"; "CSD Resource Type")
        {

        }
    }
    fieldgroups
    {
        addlast(DropDown; "CSD Resource Type")
        {

        }
    }
}