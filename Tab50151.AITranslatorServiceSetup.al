table 50151 "AI Translator Service Setup"
{
    fields
    {
        field(1;"Primary Key"; Code[10])
        {  
        }
        field(2; "URL"; Text[250])
        {
        }
    }
    
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    procedure InsertIfNotExists()
    var
    begin
        reset;
        IF NOT get THEN BEGIN
            Init();
            Insert();
        END;
    end;

}