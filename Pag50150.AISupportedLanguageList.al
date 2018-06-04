page 50150 "AI Supported Language List"
{
    
    PageType = List;
    SourceTable = "AI Supported Language";
    Caption = 'AI Supported Language List';
    ApplicationArea = All;
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("AI Supported Language";"AI Supported Language")
                {
                    ApplicationArea = All;
                }
                field("Description";"Description")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    
}
