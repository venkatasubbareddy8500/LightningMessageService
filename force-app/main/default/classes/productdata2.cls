public class productdata2 {

      @AuraEnabled(cacheable=true)
    public static List<Order> fetchAcc (String searchKey){
        String query= 'SELECT Id, Name ,Account.Name, OrderNumber FROM Order';
        if ( searchKey != Null ) {
            String key = '%' + searchKey + '%';
            query += ' WHERE Account.Name LIKE :key';
        }system.debug(Database.query( query ));
        return Database.query( query );
        
    }
    @AuraEnabled
    public static List<OrderItem> getContactRecords(string accId) {
        // return new List<order>([SELECT Id,name,(select Id,OrderId,OrderItemNumber,PricebookEntry.Product2.Name,PricebookEntry.Product2.id,Quantity,UnitPrice FROM OrderItems ) from order where id=:accId LIMIT 100]);
        return new list<OrderItem> ([Select id , OrderId , Product2Id ,Product2.Name, Quantity, UnitPrice, TotalPrice from OrderItem where OrderId =:accId]);                      
    }
}