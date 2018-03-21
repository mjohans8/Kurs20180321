pageextension 123456700 ResourceCardExt extends "Resource Card"
// CSD1.00 - 2018-03-21 - MJO
{
    layout
    {
        addlast(General)
        {
            field("Resource Type";"Resource Type")
            {
            }
            field("Quantity Per Day";"Quantity Per Day")
            {
            }
        }
        addafter("Personal Data")
        {
            group("Room")
            {
                field("Maximum Participants";"Maximum Participants")
                {
                    Visible = ShowmaxField;
                }
            }
        }
    }

    trigger OnOpenPage();
    begin
        ShowmaxField := (Type = Type::Machine);
        CurrPage.Update(false);         
    end;    

    var
    [InDataSet]
    ShowmaxField :Boolean;
}