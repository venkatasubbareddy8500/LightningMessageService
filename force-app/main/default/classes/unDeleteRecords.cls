public class unDeleteRecords {
	public void undeletedmlstatement(string undname){
        /* undelete dml statement is used to restore the deleted records to the actual object from the recyclebin
           we can fetch the deleted records from the recyclebin by using the "isDeleted" field
             must imp to use in query [isDeleted = true ALL ROWS]
            ---> to Undelete one record ==> Undelete <objectName>;
            ----> to undelete multiple record ==> Undelete <collectionObjectName>;
             ---->  By using Database Class:
                                             Database.UndeleteResult[] results =
                                             Database.Undelete(<collectionObjectName>, Boolean);       */
        if(undname != null && undname != ''){
            undname += '%';
            list<Subbareddy__c> cntlst = [Select id, Name from Subbareddy__c Where Name like : undname and isDeleted = true ALL ROWS];
           System.debug('undeleted size'+cntlst.size());
            undelete cntlst;
            System.debug('undeleted size'+cntlst.size());
            /*
             * another form of undelete
              undelete [Select id, lastname from Contact Where lastname like : undname and isDeleted = true ALL ROWS];
             */
        }
    }
}