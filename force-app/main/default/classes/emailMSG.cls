public class emailMSG {
    
    @AuraEnabled
    public static List<String> getMsg(){
        List<String> Msg = new List<String>();
        
        Msg.add('SubJect - CONTACT FROM Ray Williams on AMES.com CCPA Privacy Request');
        Msg.add('Name: Sudeep singareddy');
        Msg.add('Email: Sudeep.singareddy@gmail.com');
        Msg.add('Phone: 2815856490');
        Msg.add('Company:AMES');
        Msg.add('Address: 20 Soojian Dr, Leicester MA 1524');
        Msg.add('Need a replacement tray for 8 cu ft wheel barrel true temper Subject as T2');
        
        system.debug(Msg);
                return Msg;

    }
    
}