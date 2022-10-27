global class CaseEscalation implements Database.Batchable<SObject> {

    /*private static Date cutOff;

    global CaseEscalation(Date CutOffDate){
        cutOff = CutOffDate;
   } */    
global Database.QueryLocator start(Database.BatchableContext  ctx){
        return Database.getQueryLocator('SELECT Id, CaseNumber, CreatedDate, Status FROM Case WHERE (Status != \'Closed\' AND Status != \'Escalated\') and CreatedDate < :cutOff '); 
    }

    global void execute(Database.BatchableContext ctx, List<Sobject> scope){

        if(scope.size() == 0)
            return;

        for(Case c : (List<Case>)scope){String emailMessage = 'The case  ' + c.CaseNumber + ' has been ecalated ' + ' Please look into the case ' + 'Thankyou';
            Messaging.SingleEmailMessage mail  =   new Messaging.SingleEmailMessage();
            String[] toAddresses = new String[] {'bollapuvenkatasubbareddy@gmail.com'};
            mail.setToAddresses(toAddresses);
            mail.setSubject('Case Escalation');
            mail.setPlainTextBody(emailMessage);
            Messaging.sendEmail(new Messaging.SingleEmailMessage[]{ mail });

            c.Status = 'Escalated';
        }

        update scope;
    }

    global void finish(Database.BatchableContext ctx){

    }
}