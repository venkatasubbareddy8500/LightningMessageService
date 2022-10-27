public class getOrders {
    @AuraEnabled
    public static List<Order> getorderRecords() {
        return new List<Order>([Select id,Name,OrderNumber,Account.Name, TotalAmount from Order LIMIT 100]);
    }
    @AuraEnabled
    public static List<OrderItem> getorderitemRecords(string accId) {
        // return new List<order>([SELECT Id,name,(select Id,OrderId,OrderItemNumber,PricebookEntry.Product2.Name,PricebookEntry.Product2.id,Quantity,UnitPrice FROM OrderItems ) from order where id=:accId LIMIT 100]);
        return new list<OrderItem> ([Select id , OrderId , Product2Id ,Product2.Name, Quantity, TotalPrice, UnitPrice from OrderItem where OrderId =:accId]);                      
    }
}