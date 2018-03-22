page 123456707 "Seminar Comment List"
{
    Caption = 'Seminar Comment List';
    Editable = false;
    PageType = List;
    SourceTable = "Seminar Comment Line";
    UsageCategory = Tasks;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date; Date)
                {
                }
                field(Code; Code)
                {
                    Visible = false;
                }
                field(Comment; Comment)
                {
                }
            }
        }
    }
}