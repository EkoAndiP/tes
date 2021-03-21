page 51002 "IDPR Purch Req List"
{
    ApplicationArea = All;
    Caption = 'Purch Req List';
    CardPageId = "IDPR Purch Req";
    PageType = List;
    RefreshOnActivate = true;
    SourceTable = "IDPR Purch Req Table";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Purch Req ID"; Rec."Purch Req ID")
                {
                    ApplicationArea = All;
                }
                field("Purch Req Name"; Rec."Purch Req Name")
                {
                    ApplicationArea = All;
                }
                field(Originator; Rec.Originator)
                {
                    ApplicationArea = All;
                }
                field("Requisition Status"; Rec."Requisition Status")
                {
                    ApplicationArea = All;
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ApplicationArea = All;
                }
                field("Submitted Date Time"; Rec."Submitted Date Time")
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
            group(Release)
            {
                action("Purchase Order")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
