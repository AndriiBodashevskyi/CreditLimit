pageextension 50100 "Test General Ledger Setup Ext" extends "General Ledger Setup" //118
{
    layout
    {
        addlast(General)
        { 
            field("Trigger Credit Limit"; Rec."Trigger Credit Limit")
            {
                ToolTip = 'Specifies the value of the Trigger Credit Limit field';
                ApplicationArea = All;
            }
        }
    }
}