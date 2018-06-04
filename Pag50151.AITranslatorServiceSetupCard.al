page 50151 "AI Translator Service Setup"
{
    
    PageType = Card;
    SourceTable = "AI Translator Service Setup";
    Caption = 'AI Translator Service Setup Card';
    
    layout
    {
        area(content)
        {
            group(General)
            {
                field("Primary Key";"Primary Key")
                {
                    ApplicationArea = All;
                }
                field("URL";"URL")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Supported languages list")
            {
                Caption = 'AI Supported Language';
                Promoted = true;
                PromotedCategory = Process;
                Image = Language;

            }
        }
    }       

}

