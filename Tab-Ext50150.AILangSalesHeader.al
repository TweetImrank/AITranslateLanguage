tableextension 50150 "AI Lang Sales Header" extends "Sales Header"
{
    fields
    {
        
        modify("Bill-to Customer No.")
        {
            trigger OnAfterValidate()
            begin
                AddAILanguageCodeFromCustomer();
            end;
        }
        // Add changes to table fields here
        field(50150; "AI Language"; Code[10])
        {
            TableRelation = "AI Supported Language";
        }
    }

    local procedure AddAILanguageCodeFromCustomer()
    var
    AddAILanguageCodeFromCustomer : Codeunit AddAILanguageCodeFromCustomer;
    begin
        AddAILanguageCodeFromCustomer.AddAILanguageCodeFromCustomer(Rec);
    end;

}