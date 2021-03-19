page 51001 "IDPR Purch Req"
{
    Caption = 'Purch Requisitions';
    PageType = Document;
    SourceTable = "IDPR Purch Req Table";
    RefreshOnActivate = true;

    layout
    {
        area(content)
        {
            group("Purchase requisition header")
            {
                group(Administration)
                {
                    field("Purch Req ID"; Rec."Purch Req ID")
                    {
                        ApplicationArea = All;
                        Importance = Promoted;
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
                    field("Requisition purpose"; Rec."Requisition Purpose")
                    {
                        ApplicationArea = All;
                    }
                }

                group(Dates)
                {
                    field("Required Date"; Rec."Required Date")
                    {
                        ApplicationArea = All;
                    }
                    field("Trans Date"; Rec."Trans Date")
                    {
                        ApplicationArea = All;
                    }
                }

                group(Amount)
                {
                    field("Total Amount"; Rec."Total Amount")
                    {
                        ApplicationArea = All;
                    }
                }
            }
            part("PR Lines"; "IDPR Purch Req Line Subform")
            {
                ApplicationArea = All;
                Editable = Rec."Purch Req ID" <> '';
                Enabled = Rec."Purch Req ID" <> '';
                SubPageLink = "Purch Req ID" = field("Purch Req ID");
            }
            /*part("Line Details"; "IDPR PRLine Details")
            {
                ApplicationArea = All;
                Provider = "PR Lines";
                SubPageLink = "Purch Req ID" = field("Purch Req ID"),
                              Lines = field(Lines);
            }*/
        }
    }

    local procedure ChangeStatus(Status: Text)
    begin
        /*Rec."Requisition Status"::Approved;
        Rec."Requisition Status"::Cancelled;
        Rec."Requisition Status"::Closed;
        Rec."Requisition Status"::Draft;
        Rec."Requisition Status"::InReview;
        Rec."Requisition Status"::Rejected*/

        if Status = 'Approved' then begin

        end;

    end;

}
