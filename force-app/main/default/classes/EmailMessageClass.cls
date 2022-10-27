public class EmailMessageClass {  
    @AuraEnabled
    public static List<String> getMessage(String message)
    {
        
        String[] emailBodyRows = message.split('\n');
        string label;
        string value;
        List<String> masVal=new  List<String>();
        for (String emailbodyRow:emailBodyRows) {
            Boolean isValid=emailbodyRow.contains(':');
            if(isValid==true)
            {
                String[] rowContents = emailbodyRow.split(':');
                label=rowContents[0];
                if(rowContents.size()>1)
                {
                    value=rowContents[1];
                }
            }
            else{
                masVal.add(emailbodyRow);
            }
            
            
            
            
            switch on label {
                when 'Name' {
                    masVal.add(label+'='+value);
                }
                when 'Last Name' {
                    masVal.add(label+'='+value);
                }
                when 'First Name' {
                    masVal.add(label+'='+value);
                }
                when 'Email' {
                    masVal.add(label+'='+value);
                }
                when 'Phone' {
                    masVal.add(label+'='+value);
                }
                when 'Company' {
                    masVal.add(label+'='+value);
                }
                when 'Address' {
                    masVal.add(label+'='+value);
                }
                
                
                when 'Comment'
                {
                    masVal.add(label+'='+value);
                }
                
                when 'PurchaesdFrom'
                {
                    masVal.add(label+'='+value);
                }
                
				when 'Brand'
                {
                    masVal.add(label+'='+value);
                }
                
            }
            
        }
        system.debug('masVal:'+masVal);
        return masVal;
        
    }
@AuraEnabled
    public static List<String> getMessage1(String message)
    {
        
        String[] emailBodyRows = message.split('\\,');
        string label;
        string value;
        List<String> masVal=new  List<String>();
        for (String emailbodyRow:emailBodyRows) {
            Boolean isValid=emailbodyRow.contains(':');
            if(isValid==true)
            {
                String[] rowContents = emailbodyRow.split(':');
                label=rowContents[0];
                if(rowContents.size()>1)
                {
                    value=rowContents[1];
                }
            }
            else{
                masVal.add(emailbodyRow);
            }
            
            
            
            
            switch on label {
                when 'Name' {
                    masVal.add(label+'='+value);
                }
                when 'Last Name' {
                    masVal.add(label+'='+value);
                }
                when 'First Name' {
                    masVal.add(label+'='+value);
                }
                when 'Email' {
                    masVal.add(label+'='+value);
                }
                when 'Phone' {
                    masVal.add(label+'='+value);
                }
                when 'Company' {
                    masVal.add(label+'='+value);
                }
                when 'Address' {
                    masVal.add(label+'='+value);
                }
                
                
                when 'Comments'
                {
                    masVal.add(label+'='+value);
                }
                
                when 'PurchaesdFrom'
                {
                    masVal.add(label+'='+value);
                }
                
				when 'Brand'
                {
                    masVal.add(label+'='+value);
                }                
            }
            
        }
        system.debug('masVal:'+masVal);
        return masVal;
        
    }    
}