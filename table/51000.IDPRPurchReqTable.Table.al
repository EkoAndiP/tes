table 51000 "IDPR Purch Req Table"
{
    Caption = 'Purch Req Table';

    fields
    {
        field(1; "Purch Req ID"; Code[20])
        {
            Caption = 'Purchase requisition';

            trigger OnValidate()
            begin
                "Trans Date" := Today;
                "Required Date" := Today;
                Originator := UserId;
            end;
        }
        field(2; "Purch Req Name"; Text[50])
        {
            Caption = 'Name';
        }
        field(3; Originator; Code[50])
        {
            Caption = 'Preparer';
            TableRelation = User."User Name";
        }
        field(4; "Purch Req Type"; enum "IDPR Purch Req Type")
        {
            Caption = 'Purch Req Type';
        }
        field(5; "Required Date"; Date)
        {
            Caption = 'Requested date';
        }
        field(6; "Requisition Purpose"; enum "IDPR Requisition Purpose")
        {
            Caption = 'Requisition purpose';
        }
        field(7; "Requisition Status"; enum "IDPR PurchReq Requisition Status")
        {
            Caption = 'Status';
            InitValue = Draft;
            Editable = false;
        }
        field(8; "Trans Date"; Date)
        {
            Caption = 'Accounting date';
        }
        field(9; "Source Document Header"; Code[10])
        {
            Caption = 'Source Document Header';
        }
        field(10; "Submitted By"; Text[20])
        {
            Caption = 'Submitted By';
            Editable = false;
        }
        field(11; "Submitted Date Time"; DateTime)
        {
            Caption = 'Submitted Date Time';
            Editable = false;
        }
        field(12; "Total Amount"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("IDPR Purch Req Line"."Line Amount" where("Purch Req ID" = field("Purch Req ID")));
        }
    }
    keys
    {
        key(PK; "Purch Req ID")
        {
            Clustered = true;
        }
    }

}
