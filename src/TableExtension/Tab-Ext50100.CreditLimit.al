tableextension 50100 CreditLimit extends "General Ledger Setup" //98
{
    fields
    {
        field(50100; "Trigger Credit Limit"; Enum "CreditLimitEnum")
        {
            Caption = 'Trigger Credit Limit';
            DataClassification = CustomerContent;
        }
    }
}