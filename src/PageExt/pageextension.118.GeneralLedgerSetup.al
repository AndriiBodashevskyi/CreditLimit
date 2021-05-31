pageextension 50100 "Test General Ledger Setup Ext" extends "General Ledger Setup" //118
{
    layout
    {
        addlast(General)
        { 
            field("Test Trigger Credit Limit"; Rec."Test Trigger Credit Limit")
            {
                ToolTip = 'Specifies the value of the Trigger Credit Limit field';
                ApplicationArea = All;
            }
        }
    }
}