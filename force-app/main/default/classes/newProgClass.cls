public class newProgClass {
    
    public decimal subba = 200;
    public static void subbareddy(){
        
        integer customerCode;
        string customerName;
        
        customerCode = 10;
        customerName = 'hemanth';
        
        system.debug(customerCode);
        system.debug(customerName);
    }
    
    public static void kmpl(){
        integer principleAmount = 20000;
        integer tenure = 5;
        integer rateOfInterest = 3;
        integer interestAmount;
        interestAmount = (principleAmount * tenure * rateOfInterest) / 100;
        
        system.debug(interestAmount);
    }
    
    public static void billAmount(){
        integer quantity = 25;
        integer unitPrice = 45;
        integer billAmount = quantity * unitPrice;
        
        system.debug(billAmount);
    }
    
    public static void cond(){
        
        integer firstNum, secNum, result;
        
        firstNum = 10;
        secNum = 5;
        result = firstNum + secNum;
        system.debug(result);
        result = firstNum - secNum;
        if(secNum>0){
            system.debug(result);
            system.debug('Reminder Result is...: '+ Math.Mod(firstNum, secNum)); 
            
        }
    }
    
    public static void biggestNum(){
        
        integer firstNum, secNum;
        firstNum = 500;
        secNum = 500;
        
        if(firstNum == secNum){
            
            system.debug('both Values are equals');
        } else if(firstNum > secNum){
            system.debug('first number big value to second one');
        } else {
            system.debug('first number is less than second value');
        }
    }
    
    public static void season(){
        integer monthNumber = 1;
        if(monthNumber >= 1 && monthNumber <= 4)
        {
            system.debug('Winter Season.');
        }
        else if(monthNumber >= 5 && monthNumber <= 8)
        {
            system.debug('Summer Season.');
        }
        else if(monthNumber >= 9 && monthNumber <= 12)
        {
            system.debug('Spring Season');
        }
        else
        {
            system.debug('Invalid Month Number.');
        }
    }
    
    public static void switchStatement(){
        integer monthNumber = 15;
        switch on monthNumber
        {
            when 1,2,3,4{
                system.debug('Winter Season.');
            }
            when 5,6,7,8{
                system.debug('Summer Season.');
            }
            when 9,10,11,12{
                system.debug('Spring Season');
            }
            when else{
                system.debug('Invalid Month Number.');
            }
        }
    }
    
    public static void welcomeMessage(){
        integer counter = 1;
        while(counter<=10){
            system.debug('Welcome to Apex Programming.');
            counter++;
        }
    }
    
    public static void uptoHundred(){
        integer counter = 1;
        while(counter<=100){
            system.debug('display upto 100 numbers' + counter);
            counter++;
        }
    }
    
    public static void oddNumbers(){
        integer counter = 1;
        do{
            system.debug('Odd Number is..: '+ counter);
            
            counter += 2;
        } while(counter<=100);
    }
    
    public static void forNumbers(){
        for(integer num = 2; num<=100; num+=2){
            system.debug('even numbers' + num);
        }
    }
    
    public static void arrayValues(){
        integer[] intNum = new integer[5];
        intNum[0] = 100;
        intNum[1] = 456;
        intNum[2] = 40;
        intNum[3] = 67;
        intNum[4] = 10;
        
        system.debug(intNum[0]);
        system.debug(intNum[2]);
        system.debug(intNum[1]);
        system.debug(intNum[4]);
        system.debug('Array size is' + intNum.size());
        system.debug(intNum);
        
        for(integer some : intNum){
            system.debug(some);
            
        }
        
    }
    
    public static void newProgClass(){
        Account acc = new Account();
        
        acc.Name = 'subbareddy';
        acc.BillingCity = 'hyderabad';
        system.debug(acc);
    }
    
    public integer empCode = 3268;
    public static void employeeDetails(){
        integer empCode = 3262;
        string empName = 'subbareddy', designation = 'Junior Engineer';
        decimal empSalary = 3.5;
        
        system.debug(empCode);
        system.debug(empName);
        system.debug(designation);
        
        
    }
    
    public static void kamalapuri(){
        Account acc = new Account();
        
        system.debug('account name is ' + acc.Name);
        
        acc.Name = 'subbareddy Venkata';
        system.debug('account name is' + acc.Name);  
        
    }
    
    public static void insertionAccount(){
        Account acc = new Account();
        
        acc.Name = 'Sample Apex Account Record';
        acc.rating = 'Hot';
        acc.industry = 'Banking';
        acc.annualrevenue = 5000000;
        acc.type = 'Prospect';
        acc.website = 'www.gmail.com';
        acc.phone = '9900998877';
        acc.fax = '9900887766';
        acc.active__C = 'Yes';
        acc.customerPriority__C = 'High';
        
        insert acc;
        
        if(acc.id != null)
        {
            system.debug('Account Record inserted with the Id ...: '+ acc.id);
        }
        
    }
    
    public static void deleteacc(){
        
        List<Account> acc = [select id, Name from Account where Name='Sample Apex Account Record'];
        system.debug(acc.size());
    delete acc;
        system.debug(acc.size());
        
    }
    
    public static void bulkRecords(){
        list <Account> acc1 = new list<Account>();
        for(integer i=0;i<10;i++){
           
      Account acc = new Account();
        acc.Name = 'Sample Apex Account Record';
        acc.rating = 'Hot';
        acc.industry = 'Banking';
        acc.annualrevenue = 5000000;
        acc.type = 'Prospect';
        acc.website = 'www.gmail.com';
        acc.phone = '9900998877';
        acc.fax = '9900887766';
        acc.active__C = 'Yes';
        acc.customerPriority__C = 'High';
        
        acc1.add(acc);
       
        }
        insert acc1;
         system.debug('Account Record inserted with the Id ...: '+ acc1.size());
        for(account add:acc1){
            system.debug(add.id);
        }
        list<account> bbn = [select id, Name, Phone from Account];
        
        for(Account somesubba:bbn){
            somesubba.Phone = '7878';
            
        }
        update bbn;
        system.debug(bbn);
    }
    
    public static void insertRelatedrec(){
        Account acc = new Account();
        acc.Name = 'Parent Account Record';
        acc.rating = 'Hot';
        acc.industry = 'Banking';
        acc.annualrevenue = 5600000;
        
        insert acc;
        
        system.debug(acc.id);
        
        Contact con = new Contact();
            con.firstname = 'Child';
            con.lastname = 'Contact Record';
            con.email = 'sample@test.com';
            con.title = 'Project Manager';
            con.Phone = '9900990000';
            con.fax = '9955443311';
            con.homephone = '9900087777';
            con.otherphone = '6655665566';
        
        con.AccountId = acc.id;
        insert con;
        
        system.debug(con);
        
    }
    
}