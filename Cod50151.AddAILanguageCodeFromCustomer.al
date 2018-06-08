codeunit 50151 "AddAILanguageCodeFromCustomer"
{
    trigger OnRun()
    begin

    end;

    var

    procedure AddAILanguageCodeFromCustomer(var Rec: Record "Sales Header")
    var
    begin
        DoAddAILanguageCodeToSalesHeaderFromCustomer(Rec)
    end;

    local procedure DoAddAILanguageCodeToSalesHeaderFromCustomer(var SalesHeader: Record "Sales Header")
    var
        Customer: Record Customer;
        Language: Record Language;
    begin
        GetCustomer(SalesHeader, Customer);
        GetCustomerLanguageCode(Customer, Language);
        AssignAILanguageCodeToSalesHeader(Language, SalesHeader);
    end;

    local procedure GetCustomer(SalesHeader: Record "Sales Header"; var Customer: Record Customer)
    var
    begin
        if not Customer.GET(SalesHeader."Bill-to Customer No.") then
            exit;
    end;

    local procedure GetCustomerLanguageCode(Customer: Record Customer; var Language: Record Language)
    var
    begin
        if Customer."Language Code" = '' then
            exit;

        if not Language.GET(Customer."Language Code") then
            exit;
    end;

    local procedure AssignAILanguageCodeToSalesHeader(Language: Record Language; var SalesHeader: Record "Sales Header")
    var
    begin
        SalesHeader."AI Language" := Language."AI Language";
    end;
}