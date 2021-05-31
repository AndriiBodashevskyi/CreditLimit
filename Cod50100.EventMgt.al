codeunit 50100 "Event Mgt."
{
    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnBeforeModifyEvent', '', False, False)]
    local procedure SalesLine_OnAfterModifyEvent(var Rec: Record "Sales Line"; var xRec: Record "Sales Line"; RunTrigger: Boolean)
    var
        TotalSalesLine: Record "Sales Line";
        Customer: Record Customer;
        CreditLimitLbl: Label 'The Total amount %1 is more than Credit limit %2 on setup for Customer %3', Locked = true;
    begin
        if (Rec."Amount Including VAT" = xRec."Amount Including VAT") then
            exit;

        // case Expression of
        //     ExpressionOrRange:
                
        //     ExpressionOrRange:
                
        // end;
        // Find Customer for use Credit Limit
        Customer.get(Rec."Bill-to Customer No.");

        // Calc Amount Including VAT
        TotalSalesLine.SetRange("Document No.",Rec."Document No.");
        TotalSalesLine.SetRange("Document Type",Rec."Document Type");
        TotalSalesLine.CalcSums("Amount Including VAT");
        TotalSalesLine."Amount Including VAT" := TotalSalesLine."Amount Including VAT" + Rec."Amount Including VAT" - xRec."Amount Including VAT";
        Message(CreditLimitLbl, TotalSalesLine."Amount Including VAT", Customer."Credit Limit (LCY)", Rec."Bill-to Customer No.");
    end;

}
