table 51001 "IDPR Purch Req Line"
{
    Caption = 'Purch Req Line';

    fields
    {
        field(1; "Purch Req ID"; Code[20])
        {
            Caption = 'Purch Req ID';
            TableRelation = "IDPR Purch Req Table"."Purch Req ID";
        }
        field(2; Lines; Integer)
        {
            Caption = 'No.';
            Editable = false;
        }
        field(3; Vendor; Code[20])
        {
            Caption = 'Vendor Account';
            TableRelation = Vendor."No.";

            trigger OnValidate()
            var
                VendorRec: Record Vendor;
            begin
                if VendorRec.Get(Vendor) then begin
                    "Delivery Name" := VendorRec.Name;
                end;
            end;
        }
        field(4; "Delivery Name"; Text[100])
        {
            Caption = 'Vendor Name';
            Editable = false;
        }
        field(5; "Item ID"; Code[20])
        {
            Caption = 'Item ID';
            TableRelation = Item."No.";

            trigger OnValidate()
            var
                ItemRec: Record Item;
            begin
                if ItemRec.Get("Item ID") then begin
                    Name := ItemRec.Description;
                    Requisitioner := UserId;
                    InitLinesValue();
                end;
            end;
        }
        field(6; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(7; "Line Amount"; Decimal)
        {
            Caption = 'Line Amount';
            Editable = false;
        }
        field(8; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency.Code;
        }
        field(9; "Price Unit"; Decimal)
        {
            Caption = 'Price Unit';

            trigger OnValidate()
            begin
                "Line Amount" := "Price Unit" * "Purch Qty";
            end;
        }
        field(10; "Purch Qty"; Decimal)
        {
            Caption = 'Quantity';

            trigger OnValidate()
            begin
                "Line Amount" := "Price Unit" * "Purch Qty";
            end;
        }
        field(11; "Line Disc"; Decimal)
        {
            Caption = 'Line Disc';
            Editable = false;
        }
        field(12; "Line Percent"; Decimal)
        {
            Caption = 'Line Percent';
            Editable = false;
        }
        field(13; "Line Type"; Enum "IDPR Purch Req Type")
        {
            Caption = 'Line Type';
        }
        field(14; Requisitioner; Code[50])
        {
            Caption = 'Requisitioner';
            TableRelation = User."User Name";
        }
        field(15; "Requisition Status"; enum "IDPR PurchReq Requisition Status")
        {
            Caption = 'Status';
        }

    }
    keys
    {
        key(Key1; "Purch Req ID", Lines)
        {
            Clustered = true;
        }
    }

    local procedure InitLinesValue()
    var
        PRLineRec: Record "IDPR Purch Req Line";
    begin
        PRLineRec.SetRange("Purch Req ID", Rec."Purch Req ID");
        if PRLineRec.FindLast() then begin
            Rec.Lines := PRLineRec.Lines + 1;
        end
        else begin
            Rec.Lines := 1;
        end;
    end;

}
