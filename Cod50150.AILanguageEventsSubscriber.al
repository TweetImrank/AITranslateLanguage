codeunit 50150 "AI Language Events Subscriber"
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Table, Database::"Sales Header",'OnAfterValidateEvent', 'Bill-to Customer No.', true, true)]
    local procedure OnAfterValidateBillToCustomerNo(var Rec: Record "Sales Header")
    begin
        If Customer.GET(Rec."Bill-to Customer No.") then
        begin
            if Customer."Language Code" <> '' then
            begin
                if Language.GET(Customer."Language Code") then
                    Rec."AI Language" := Language."AI Language";
            end; 
        end;
    end;
    
    var Customer: Record Customer;
    var Language: Record Language;
        
}