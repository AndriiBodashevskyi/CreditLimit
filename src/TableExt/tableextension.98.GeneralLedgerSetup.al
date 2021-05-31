tableextension 50100 "Test CreditLimit" extends "General Ledger Setup" //98
{
    fields
    {
        field(50100; "Test Trigger Credit Limit"; Enum "Test CreditLimitEnum")
        {
            Caption = 'Trigger Credit Limit';
            DataClassification = CustomerContent;
        }
    }
}