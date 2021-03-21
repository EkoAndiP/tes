page 51000 "IDPR Purch Req Line Subform"
{
    AutoSplitKey = true;
    Caption = 'Lines';
    PageType = ListPart;
    SourceTable = "IDPR Purch Req Line";
    DelayedInsert = true;
    LinksAllowed = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Lines; Rec.Lines)
                {
                    ApplicationArea = All;
                }
                field(Requisitioner; Rec.Requisitioner)
                {
                    ApplicationArea = All;
                }
                field("Item ID"; Rec."Item ID")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Purch Qty"; Rec."Purch Qty")
                {
                    ApplicationArea = All;
                }
                field("Price Unit"; Rec."Price Unit")
                {
                    ApplicationArea = All;
                }
                field("Line Amount"; Rec."Line Amount")
                {
                    ApplicationArea = All;
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ApplicationArea = All;
                }
                field(Vendor; Rec.Vendor)
                {
                    ApplicationArea = All;
                }
                field("Delivery Name"; Rec."Delivery Name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
