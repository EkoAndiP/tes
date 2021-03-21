enum 51002 "IDPR PurchReq Requisition Status"
{
    Caption = 'Status';

    value(0; Draft)
    {
        Caption = 'Draft';
    }
    value(1; InReview)
    {
        Caption = 'InReview';
    }
    value(2; Rejected)
    {
        Caption = 'Rejected';
    }
    value(3; Approved)
    {
        Caption = 'Approved';
    }
    value(4; Cancelled)
    {
        Caption = 'Cancelled';
    }
    value(5; Closed)
    {
        Caption = 'Closed';
    }

}
