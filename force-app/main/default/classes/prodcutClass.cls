public class prodcutClass {
    @AuraEnabled
    //public static Product2 subbareddy(){
    public static List<Product2> subbareddy() {
        List<Product2> products =[select Name, ProductCode, Description from Product2];
       //Product2 products =[select Name from Product2 limit 1];
        system.debug(products);
        system.debug(products.size());
        return products;
        
    }
}