public class getPickListValues {
    public static void getaccpickList(){
       
        String strObjectAccount = 'Account';
        String strPickListField = 'Active__c';
        Map<String, String> mapPickListValues = new Map<String, String>();
        Schema.SObjectType objSobjectType = Schema.getGlobalDescribe().get(strObjectAccount);
        Schema.DescribeSObjectResult objDescribeSobject = objSobjectType.getDescribe();
        Map<String, Schema.SObjectField> mapFields = objDescribeSobject.fields.getMap();
        List<Schema.PicklistEntry> lstPickListValues = mapFields.get(strPicklistField).getDescribe().getPickListValues();
        for (Schema.PicklistEntry objPickList : lstPickListValues) {
            System.debug('Value = ' +objPickList.getValue() +' , Label = ' +objPickList.getLabel());
        }
        
    }
}