Global class caseEscalationway implements Database.Batchable<SObject>
{
    Global Database.QueryLocator start(database.BatchableContext bContext)
    {
        string CaseQuery = 'SELECT Id, Status,OwnerId, CreatedDate, Escalated_Date__c FROM Case';
        system.debug('CaseQuery'+CaseQuery);
           return Database.getQueryLocator(CaseQuery);   
    }
    global void Execute(Database.BatchableContext bContext, list<Case> RecordsToProcess)
    {
        List<Case> cases=new List<Case>();
        set<String> ownerIds=new set<string>();
        for(Case c:RecordsToProcess)
        {
            
            if(c.Status=='New'&&c.Escalated_Date__c==1)  
            {
                c.Status='Escalated';
                cases.add(c);
                ownerIds.add(c.ownerId);
            }
            
        }
       Database.update(cases);
        system.debug('cases'+cases);
      
       List<User> users=[Select Id,Name,Email,ManagerId,Manager.Email,Manager.Name from User Where Id IN:ownerIds];
         Messaging.Email[] mails=new Messaging.Email[]{};
        for(User u : users){
            system.debug(u);
         Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            List<String> sendTo = new List<String>();
           sendTo.add(u.Manager.Email);
           mail.setToAddresses(sendTo);
            mail.setSubject('Case Escalated');
          String body = 'Dear ' + u.Manager.Name + ',<br/><br/> Case has not been progressed for last 1 day.check with case owner..<br/><br/>';
                 body = body+'Thanks&Regards<br/>';
                 body=body+'Service Team';
          mail.setHtmlBody(body);
          mails.add(mail);
            system.debug('mails'+mails);
            }



       Messaging.sendEmail(mails);
}
    
    global void Finish(Database.BatchableContext bContext)
    {
        
    }
}