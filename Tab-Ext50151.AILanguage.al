tableextension 50151 "AI Language" extends Language
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