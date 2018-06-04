tableextension 50150 "AI Lang Sales Header" extends "Sales Header"
{
    fields
    {
        // Add changes to table fields here
        field(50150; "AI Language"; Code[10])
        {
            TableRelation = "AI Supported Language";
        }
    }

}