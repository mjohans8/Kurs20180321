tableextension 123456700 ResourceExt extends Resource
// CSD1.00 - 2018-03-21 - MJO
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate();
            begin
                rec.TestField("Unit Cost");                
            end;
        }
        field(123456700;"Resource Type";Option)
        {
            Caption= 'Resource Type';
            OptionMembers = "Internal","External";
            OptionCaption= 'Internal,External';
        }
        field(123456701;"Maximum Participants"; Integer)
        {
            Caption= 'Maximum Participants';
        }
        field(123456702;"Quantity Per Day";Decimal)
        {
            Caption='Quantity Per Day';
        }
    }
}