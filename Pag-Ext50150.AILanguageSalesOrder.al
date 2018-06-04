pageextension 50150 "AI Language Sales Order" extends "Sales Order"
{
  layout
  {
    addafter("Quote No.")
    {
      field("AI Language";"AI Language")
      {
        ApplicationArea = All;
      }
    }
  }
  actions
  {
    addlast("F&unctions")
    {
      action("Translate")
      {
        Caption = 'Translate';
        ToolTip = 'Translate';
        Promoted = true;
        PromotedIsBig = true;
        trigger OnAction()
        
        begin
         Message('Translate!'); 
        end;
        

      }
    }
  }

}
