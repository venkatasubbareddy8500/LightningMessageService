public class newApexClass {

     

    public integer ball = 9090; 

    public string applee = 'vinod'; 

     

    public void example001(){ 

         

         

        System.debug('the apple is'+applee); 

        system.debug('the ball is '+ball); 

         

        System.debug('-------------'); 

        //Assigned values 

         

        System.debug('the apple after assigned'+applee); 

        System.debug('the ball after assigned is'+ball); 

         

    } 

    public void example002(){ 

        integer principleAmount = 50000; 

        integer Intrest = 2; 

        integer tenure = 20; 

        integer total; 

         

        total =(principleAmount*Intrest*tenure)/100; 

        System.debug('the total amount with intrest is '+total); 

    } 

    public void example003(){ 

        //programme to write  

        integer totalquantity , product, totalis ; 

        totalquantity = 20 ; 

        product = 20; 

        totalis = totalquantity*product; 

         

        System.debug('the total price is '+totalis); 

    } 

    public void example004(){ 

        integer amount ,intrest , total ,tenure; 

        amount = 30000; 

        intrest = 2; 

        tenure = 20; 

         

        if(amount>20000 && intrest>=1){ 

            total = (amount*intrest*tenure+100)/100; 

            System.debug('the total amount greater than '+total); 

        } 

        else if(amount<20000 || tenure<=20){ 

            total = (amount*intrest*tenure)/100; 

            System.debug('the total amount lesser than '+total); 

        } 

        else{ 

            System.debug('No calculations has been done '); 

        } 

    } 

    public void example005(){ 

        integer num01 , num02 , num03; 

        num01 = 200; 

        num02 = 300; 

        num03 = 400; 

        if(num01>num02 && num01 > num03){ 

            System.debug('Number one is greater '+ num01 ); 

        } 

        else if(num02>num01 && num02>num03){ 

            System.debug('Number two is greater '+num02); 

        } 

        else{ 

            System.debug('Number three is the greater'+num03); 

        } 

    } 

    public void example006(){ 

        integer maths = 38; 

        integer social = 36; 

        integer chemistry = 20; 

        integer physics = 56; 

        integer biology = 18; 

         

        if(maths<=30){ 

            System.debug('passed maths'+maths); 

        } 

        else if(social<=30){ 

            System.debug('passed social'); 

        }else if(chemistry <= 30){ 

            System.debug('passed chem'); 

        }else if(physics <=30){ 

            system.debug('passed phy'); 

        }else if(biology <= 30){ 

            system.debug('passed biology'); 

        }else{ 

            system.debug('failed'); 

        } 

    } 

    public void example007(){ 

        integer numberone = 1000; 

        integer numbertwo = 1000; 

         

        if(numberone == numbertwo){ 

            System.debug('Both the numbers are equal'); 

        } 

        else if(numberone > numbertwo){ 

            System.debug('Number one is the greater'); 

        }else{ 

            System.debug('Number two is greater'); 

        } 

         

    } 

    public void example008(){ 

        integer monthnumber = 4; 

         

        if(monthnumber>=1 && monthnumber<=4){ 

            System.debug('Summer Season'); 

        }else if(monthnumber>4 && monthnumber<= 8){ 

            System.debug('rainy Season'); 

        }else if(monthnumber >=9 && monthnumber <=12){ 

            System.debug('Winter Season '); 

        } 

    } 

    //Nested if else statement 

    public void example009(){ 

        Integer mathse = 39; 

        Integer Social = 45; 

        Integer Science = 88; 

         

        if(mathse>=30){ 

            System.debug('passed mathematics'); 

            if(Social>=30){ 

                System.debug('passed Social'); 

                if(Science >= 30){ 

                    System.debug('passed Science'); 

                }else{ 

                    System.debug('failed Science'); 

                } 

            }else{ 

                System.debug('failed social'); 

            } 

        }else{ 

            System.debug('failed mathematics'); 

        } 

    } 

     

    public void example010(){ 

        integer monthnumber = 2; 

        Switch ON monthnumber{ 

            when 1,2,3,4{ 

                System.debug('Summer Season'); 

            } 

            when 5,6,7,8{ 

                System.debug('Rainy Season'); 

            } 

            when 9,10,11,12{ 

                System.debug('Winter Season'); 

            } 

        }  

    } 

    public void example011(){ 

        for(integer i = 1; i<=10; i+=2){ 

            system.debug(i);  

        }         

         

    } 

    public void example12(){ 

        //example for an array 

        integer[] codes = new integer[5]; 

        codes[0] = 22; 

        codes[1] = 13; 

        codes[3] = 22; 

        codes[4] = 33; 

        codes[5] = 67; 

         

        system.debug(codes[5]); 

    } 

    public void example13(){ 

        for(integer i=1; i<10; i++){ 

            Account acc = New Account (); 

            acc.Name = 'rizon visual studios'; 

            acc.Phone = '9009090'; 

            acc.Fax = '90882'; 

            insert acc; 

            // getting record confirmation 

            if(acc.id != null){ 

                System.debug('Account inserted Succesfully'+acc.id); 

            }             

        } 

    } 

    public void example14(){ 

        //creating a associated record account record and contact related equals 

        Account Acc = New Account(); 

        Acc.Name = 'Anand pvt lmtd'; 

        Acc.Phone = '12212'; 

        Acc.fax = '099877'; 

        insert Acc; 

        if(Acc.id != null){ 

            System.debug('Account is inserted successfully '+Acc.Id); 

            Contact Css = New Contact (); 

            Css.FirstName = Acc.Name; 

            Css.LastName = 'controller one'; 

            Css.Department = 'Apex'; 

            Css.AccountId = Acc.Id; 

            insert Css; 

            if(Css.id != Null){ 

                System.debug('Contact inserted successfully '+Css.Id); 

            } 

        } 

    } 

    public void example15(){ 

        //inserting account record associated with case record 

        Account Acc = New Account(); 

        Acc.Name = 'Apple industries'; 

        Acc.Phone = '89098'; 

        Acc.fax = '900123'; 

        insert Acc; 

        if(Acc.id != null){ 

            System.debug('Account inserted successfully '); 

            Case css = new case(); 

            css.Description = 'APex origin example'; 

            css.AccountId = Acc.Id; 

            if(css.Id != null){ 

                System.debug('case inserted successfully '); 

            } 

        } 

    } 

     

    /* parameterised procedure which is nothing but passing values during the run time  

where we can pass multiple parameters by seperating cama and 

my making the data type and parameters  */ 

    public void example16(integer number1 , integer number2 , integer number3){ 

         

        //Multiplication 

        System.debug(number1*number2*number3); 

         

        //addition 

        system.debug(number1+number2+number3); 

         

        //subraction 

        system.debug(number1-number2-number3); 

         

        /*invoking the procedure will be like  

practiceapex001 occ = new practiceapex001(); 

occ.example16(90 , 20,33); 

  

if its static method we can directly call like 

practiceapex001.example16(90,20,33); 

*/ 

    } 

    public void assignment01(){ 

        //Assignment to insert 20 lead records  

        for(integer i=1 ; i<20 ;i++){ 

            lead lld = new lead(); 

            lld.Company = 'Apple industries'; 

            lld.City = 'Hyderabad'; 

            lld.LastName = 'Subbareddy apex'; 

            insert lld; 

            if(lld.Id != null){ 

                System.debug('Lead is inserted ' + lld.Id); 

            } 

        } 

    } 

     

     

    /*CONSTRUCTOR ==> A constructor is code that is invoked when an object is created from the class blueprint. 

*  You do not need to write a constructor for every class. 

If a class does not have a user-defined constructor, a default, no-argument, public constructor is used. 

  

Rules for constructor 

1 method name must be equal to class name 

2 method shouldnt include any return type  

3 class and method must to be on public 

  

TYPES 

1.Non - parameterized constructor 

2.patrameterized constructor 

  

use cases  

we can pass the values to the class variable by defining only through constructor method 

and we can use those variables methods in any other methods in the class 

we unable to pass the values if we use return method or with different class name and the method name 

even though if we use void and other method name even though we cant pass the values to those variable outside the method 

*/ 

     

    //constructor variables to pass values 

    private integer salary , phone , fax ; 

    private string name , address , company; 

    //constructor passing the values 

    public newApexClass(){ 

        salary = 90000; 

        phone = 8090890; 

        fax = 500506; 

        name = 'subbareddy'; 

        address = 'banglore'; 

        company = 'wissen infotech'; 

         

        //using the values in below method commonly which is refferd by the above method by constructor 

    } 

    public void showpractice01detail(){ 

        system.debug('Name = '+name); 

        system.debug('salary = '+salary); 

        system.debug('fax = '+fax); 

        system.debug('phone = '+phone); 

        system.debug('address ='+address); 

    } 

     

    //parameterized constructor 

    /*Declaring the variables to store the values*/ 

    private integer carnum , carmilage ; 

    private string carname , carfueltype; 

    /* passing the values to the variables which from parameters*/ 

    public newApexClass(integer carnumm , integer carmilagee, string carnamee, string carfuel){ 

        carnum = carnumm; 

        carmilage = carmilagee; 

        carname = carnamee; 

        carfueltype = carfuel; 

    } 

    /* displaying the data */ 

    public void showpracticeexmp(){ 

        System.debug('carname is '+carname); 

        System.debug('carnumber is'+carnum); 

        System.debug('car fuel type is' +carfueltype); 

        System.debug('car mielage is '+carmilage); 

    } 

    public void example17(){ 

        //different methods in list  

        // examples of list to add another value to existing list 

        list<string> ssd = new list<string>{'vinod','sunnie'}; 

            ssd.add('showmi'); 

        //addAll method 

        //will add all the values to the list 

        string[] namess = new string[]{'rahul','mahesh','kotesh','subbareddy'}; 

            ssd.AddAll(namess); 

        //to add at particular posistion 

        ssd.Add(2,'Banglore'); 

        //size of the list 

        system.debug(ssd.size()); 

        //methodremove or removevalue Remove() 

        ssd.remove(2); 

         

        //will set the value at the particular position 

        ssd.set(2,'Mumbai'); 

         

        //method clear to clear all data clear() 

        //  ssd.clear(); 

         

        //Get Method to get specified value 

        ssd.get(2); 

         

        //method to check list is empty or not in listmethods  

        //isEmpty()  

        if(!ssd.isEmpty()){ 

             

            for(string dd:ssd){ 

                System.debug(dd); 

            } 

             

        }else{ 

            System.debug('List is empty'); 

        } 

         

        //this copy the list of existing list 

        //ssd.clone(); 

         

        //to check the duplicates in a particular list 

        //Search for an element or value 

        if(ssd.Contains('Mumbai')){ 

            System.debug('Yes this duplicate is exist'); 

        }else{ 

            System.debug('No duplicate exists'); 

        } 

        //sort method will arrange the list in assending order 

        ssd.sort(); 

        System.debug('After sorting'); 

        for(string ffd:ssd){ 

            System.debug('------Ater sorting order ------'+ffd); 

        } 

    } 

    public void example18(){ 

        //Set Collection  

        //it is an unorderd collection but will sort inside itself in set collection 

        //set dosnt takes duplicates 

         

        set <string> ffd = new set<string>{'dog','cat','ball','Apple','cat'}; 

            //set methods 

            //add method to add a value 

            ffd.add('kohinoor'); 

         

        //AddAll will adds all the values to the set 

        string[] snames = new String[]{'hyderabad','banglore','bangkok'}; 

            ffd.AddAll(snames); 

         

        //Remove() to remove particular value from set 

        ffd.remove('hyderabad'); 

         

        //clear() to clear all the values in the list 

        //ffd.clear(); 

         

        //equals() compares two collections list to list or list to map 

        set<string> yyu = new set<string>{'rahul','ajay','vijay','banglore'}; 

            if(ffd.equals(yyu)){ 

                System.debug('Same value exists'); 

            }else{ 

                System.debug('both collections are different'); 

            } 

        //if collection is not empty the will executes the logic 

        if(!ffd.isEmpty()){ 

            System.debug(ffd.size()); 

            for(string ggd : ffd){ 

                System.debug(ggd); 

                 

            } 

        } 

         

    } 

    public void example19(){ 

        //map collection 

        //mapmethods 

         

        //method to put or add values 

        map<integer,string> jjk = new map<integer,string>(); 

        jjk.put(1,'apple'); 

        jjk.put(2,'ball'); 

        jjk.put(3,'cat'); 

        jjk.put(4,'dog'); 

        jjk.put(5,'elepant'); 

         

        //PutAll method adds all the values to the collection 

        map<integer,string> aad = new map<integer,string>{6=>'hyderabad',7=>'banglore',8=>'kolkata',9=>'chennai'}; 

            aad.putAll(jjk); 

         

        //isEmpty() checks the collection is empty or not 

        if(!jjk.isEmpty()){ 

            System.debug(jjk.size()); 

             

            //Get will get the particular value 

            System.debug('the value is'+jjk.get(5)); 

        } 

         

        //ContaionsKey checks if it contains particular key or any duplicate key 

        if(jjk.ContainsKey(1)){ 

            System.debug('yes the value exist'); 

            jjk.Remove(2); 

        } 

        //Mapiteration of key and value both 

        for(integer hh : jjk.keySet()){ 

            System.debug('key is ='+hh+'key value is'+jjk.get(hh)); 

        } 

        //map KeySet() which will get all the key values and set 

        set<integer> uio = jjk.KeySet(); 

        for(integer opp : uio){ 

            System.debug(opp); 

        } 

        // .values will get the values and set to a collection 

        list<string> listvalues = jjk.values(); 

        for(string lop : listvalues){ 

            System.debug('values are '+lop); 

        } 

        //to clear all the data in collection 

        jjk.clear(); 

        for(integer hh : jjk.keySet()){ 

            System.debug('key is ='+hh+'key data is'+jjk.get(hh)); 

        } 

         

        //equals() to compare two collections 

        if(jjk.equals(aad)){ 

            System.debug('Data is equal'); 

        }else{ 

            System.debug('Data is Not equal'); 

        } 

    } 

    public void bulkifyexample(){ 

        /*if we exceed more than 150 dml in a single transuction then we will encounter with error bulkify */ 

        list<contact> dfff = new list<contact>(); 

        for(integer i=1 ; i<300; i++){ 

            Contact Acp = New Contact(); 

            Acp.LastName = 'Ex Bulkify'; 

            Acp.Department = 'Apex'; 

            Acp.Description = 'To know what if use more dml than 150'; 

            Acp.Email = 'v@vvv.com'; 

            /* insert Acp; 

this will get error if we use dml inside for loop cant exceed more than 150 

error 

*/ 

            //hence we add all the data to the  

            dfff.add(Acp);    

        } 

        insert dfff; 

        //then insert from the collection to the data base 

        for(contact fgh:dfff){ 

            if(fgh.id!=null){ 

                System.debug('the id is'+fgh.id); 

            } 

        } 

    } 

    public void pracsoql(){ 

        //SOQL soql to retrive the data  

        //we can query up to 50,000 records through soql 

        //we can have max 100 soql queries inside a transaction 

        //when we tries more than 100 soql transaction then system will throw system exception handling error 

        //SalesForce will hit the Governor Limit and will cause an exception "System.LimitException Too Many SOQL Queries : 101". 

        //best practice is not to use soql inside the for loop 

        list <Account> nnn = [Select id , Name , phone ,industry,annualrevenue,active__c from Account]; 

        //soql query to query the email template from thr emailTemplate object  

        list<sObject> iop = [Select id, name, description, subject, body, templatetype from EmailTemplate]; 

        //exmple query to query the dta from user 

        list<user> pop = [select id ,firstName,lastName,email,isactive from user]; 

         

        /*Soql queries were of two types   

Static soql and dynamic soql 

  

*/ 

        //query the records from the lead  

        list<lead> qwe = [select id , firstName , lastName, email , fax from lead]; 

        System.debug(qwe.size()); 

        if(!qwe.isEmpty()){ 

            for(sObject assp : qwe){ 

                System.debug(assp); 

            }  

        } 

        //map collection soql query 

        map<id , Account> aws = New map <id , Account>([Select id , Name , phone , fax from Account]); 

        System.debug('the size is'+aws.size()); 

        if(!aws.isEmpty()){ 

            for(id opo : aws.keyset()){ 

                System.debug('the key is '+opo+'the value is'+aws.get(opo)); 

            }   

        } 

         

    } 

    public void Assignment02(string strname){ 

        //soqlclause 

        //query the records from case object by using map 

        map <id , case> ioo = new map<id , case>([Select id ,CaseNumber ,Origin from case where origin = 'phone' limit 10]); 

        if(!ioo.isEmpty()){ 

            for(id cased : ioo.keySet()){ 

                System.debug('the key is '+cased+'the value is'+ioo.get(cased)); 

            } 

        } 

         

        //ALL ROWS This clause is used to get all the records from the object including "Deleted Records" also. It is an optional statement in SOQL Query. 

         

        list <case> lop = [Select id ,CaseNumber ,Origin from case ALL ROWS]; 

         

        //Orderby clause which is used to arrange the retrived data asc or dec 

        //if devloper dosnt include any orderby then it will automatically order in ascending  

        list<Account> iop = [Select id , Name , phone ,createddate, fax from Account Order by createddate desc]; 

         

        //OFFSET clause will be used in soql to  skip the specific number of result , this is optional in soql 

        List<Account> lstAccounts = [Select id, name, rating, industry, annualrevenue, active__C, phone, fax from Account ORDER BY Name Limit : 20 OFFSET : 5];  

         

        //WHERE soql which is used to categorize specific number of records from the result 

        list<Account> uio = [Select id , Name ,phone , fax from Account where Name = 'Nani']; 

         

        //likeoperator which starts with 'where' used to search records start with particular word 

        //if want more in detail prefer page 77-80 

        list<Account> uyt = [Select id , Name , phone from Account where name like '%ram%']; 

         

        for(Account ppl : uyt){ 

            System.debug('the case detail is '+ppl); 

        } 

        if(strname != null && strname != ''){ 

            strname += '%'; 

            list<contact> pop = [Select id , firstName , lastName ,phone from Contact where firstName like:strname]; 

            for(contact iopp : pop){ 

                System.debug('the available data is'+iop); 

            } 

             

        } 

         

    } 

    Public void GetContactsByIndustryName(string industryName) 

    { 

        //mapquer mapiterator maploop  

        //query accounts and contacts related to account using mapcollection  

        if(industryName != null && industryName != '') 

        { 

            // Get All the Accounts based on the specified industry... 

            Map<ID, Account> mapAccounts = new Map<Id,Account>([Select id, name, industry from Account where industry =: industryName]); 

             

            system.debug('Collection size...: '+ mapAccounts.size()); 

            for(id opo : mapAccounts.keyset()){ 

                system.debug('key'+opo); 

            } 

             

            if(! mapAccounts.KeySet().isEmpty()) 

            { 

                // Get the Related Contacts of the Accounts.. 

                List<Contact> lstContacts= [Select id, firstname, lastname,  email, phone, fax, accountid  from Contact Where accountid IN : mapAccounts.KeySet()]; 

                 

                if(! lstContacts.isEmpty()) 

                { 

                    system.debug('Contacts Collection...: '+ lstContacts.size()); 

                     

                    // Display the Contact Records... 

                    for(Contact con : lstContacts) 

                    { 

                        system.debug('Contact Record...: '+ con); 

                    } 

                } 

            } 

             

        } 

    } 

    //Dynamic soql queries dynamicsoql 

    /* Dynamic soql is nothing but we can insert the fields/coloumns at runtime and we can add 

conditions at the runtime by inserting them through strings 

ex =        

String soqlquery = 'Select id, Name,'; 

soqlquery += 'fax , phone'; 

soqlquery += 'from Account'; 

this will adds one by one  

  

NOTE =  Once the query has been done prepared we need to execute query manually with method  

***** > Database.Query() < ******** 

Database.Query() will always returns in the collection format 

examp >  

List <ObjectName> varname = Database.query(query); 

List<Account> Accexmp = Database.Query(soqlquery); 

*/ 

    public void examp21(string nameinput){ 

        //Dynamicsoql Dynamicsoqlqueryexamples 

        if(nameinput != null && nameinput != ''){ 

            string ourquery =  'Select id, name, fax,phone from Account '; 

            ourquery += 'where Name =: nameinput'; 

            List<Account> isis = Database.query(ourquery); 

            if(!isis.isempty()){ 

                for(Account trye:isis){ 

                    System.debug(trye); 

                }  

            } 

        } 

    } 

    public void Dynamicsoql02(string nmeinpt){ 

         

        /* Dynamicsoql if the user enters or searches through email then the  

soql logic will execute as email field or else will search by lastname using dynamic soql */ 

         

        if(nmeinpt != null && nmeinpt != ''){ 

            string srchinpt = 'Select id, firstname, lastname, email, status, company, phone from Lead Where '; 

            //checks weather the input is either email format 

            if(pattern.matches('[a-zA-Z0-9.+_-]+@[a-zA-Z.-]+.[a-zA-Z]{2,4}', nmeinpt)){ 

                //if yes changes the dynamic query and search by email field 

                srchinpt += 'email=:nmeinpt'; 

                System.debug('eml one'); 

            }else{ 

                nmeinpt += '%'; 

                //else will search by name field 

                srchinpt += 'lastName like : nmeinpt'; 

                System.debug('nme one'); 

            } 

            list<lead> vop = Database.query(srchinpt); 

            if(!vop.isEmpty()){ 

                for(lead qop:vop){ 

                    System.debug(qop); 

                } 

            } 

        }  

    } 

    public void aggrigatefun(){ 

        /*Aggregate Functions will receive a collection of values as the input and will  

perform the operations on the records and it return only one value as the result.  

  

SOQL Aggrigate functions soqlaggrigatefunctions  

  

1. Count(): 

        This function will returns an integer, which indicates the number of records exist inside the object. 

2. Count(<ColumnName>): 

   This function will returns an integer, which indicates the number values exist inside the specified 

   column. 

   Note: 

   In this function, "NULL" values will not be countable. 

  3. Count_Distinct(<ColumnName>): 

    This function will returns an integer, which indicates the number of values exist inside the object. 

  

   Note: 

     But, in this function it won't count the "NULL values" and "Repeated / Duplicate" values. 

  4. Sum(<ColumnName>): 

    This function will returns the "Sum / Total" of all the values exist inside the specified column. 

   Note: 

      We can supply the "Number / Percent / Currency" columns as the input. 

  5. Min(<ColumnName>):   

     This function will returns the smallest value exist inside the specified column. 

     Note: We can supply either "Number / Percent / Currency / Date / Time / DateTime" fields as the 

      input. 

  6. Max(<ColumnName>): 

    This function will returns the Highest value exist inside the specified column. 

    Note: We can supply either "Number / Percent / Currency / Date / Time / DateTime" fields as the 

    input. 

  

*/ 

        // Program for static and dynamic soql to know records in Account object 

        //COUNT() this method will returns how many records were available 

        //static soql 

        integer sim = [Select count() from Account]; 

        System.debug(sim); 

        //Dynamic soql 

        String scount = 'Select count() from Account'; 

        integer simmmm = Database.Countquery(scount); 

        System.debug('dynamic soql count is' +simmmm); 

         

        AggregateResult[] aggResult = [Select industry, count(id) recordsCount from Account Group By industry]; 

        System.debug('the agg count is '+aggResult.size()); 

       for(AggregateResult res : aggResult) 

         { 

         system.debug('Industry Name...: '+ res.Get('Industry') + ' ---> Count : '+ res.Get('recordsCount')); 

        }  

    } 

        public void AggrigateFunctions(){ 

        /*upon using the aggrigate functions in the soql query then the result should be type of "aggrigateResult" class 

            

          --> we can fetch each record by iterating collection 

          --> we can fetch each value inside the resultant record by using Get function 

               syntax res.Get('Name'); 

          [select industry, count(id) recordsCount from Account Group By Industry] 

*/ 

        //with this programme we can fetch on particular name how many records were exist 

        aggregateResult[] ill= [ Select Name , count(id) recordsCount from Account group by Name]; 

        for(aggregateResult ipo : ill){ 

             System.debug('Name is'+ipo.get('Name')+'count is -->'+ipo.get('recordscount')); 

        } 

    } 

    public void havingclauseexmp(){ 

        /*     having clause is used to add one or more user defined  

               conditions by using group by clause to the filter data     

            "having" clause should be always used by the "Group by" clause  */ 

        //Write an apex program, to display the Industry names, and the Number of records in each industry.Which are having minimum 2 records inside the group. 

  

        AggregateResult[]  aggResult = [Select industry , count(id) recordsCount from Account Group by industry having count(id)>=3]; 

    

    System.debug('the collection size is'+aggResult.size()); 

        for(AggregateResult ress:aggResult){ 

            System.debug('the industry is'+ress.get('industry')+'---->count'+ress.get('recordsCount')); 

        } 

     

    } 

    public void havingclause02(){ 

        //Example programme to fetch records with same name or duplicate records on same name having more than one using having clause soql  

        aggregateResult[] aggResult01 = [Select Name , count(id) recordsCount from Account group by Name having Count(id)>1]; 

        System.debug('Existing duplicate records is '+aggResult01.size()); 

        for(aggregateResult res:aggResult01){ 

            System.debug('Name is '+res.get('Name')+'the count is '+res.get('recordsCount')); 

        } 

    } 

    // ****************RELATIONSHIP QUERY ********************************************************* 

     

        /* To fetch the data from different objects we need to write multiple queries but this may leads to  

      101 query exception hence we can write in single query to fetch records from different objects 

        NOTE : 

              THE Objects should be either lookup / master detail relationship  

                   ----> Parent to child (standard Relationship) 

                   ----> child to parent (standard Relationship) 

                   -----> parent to child (Custom Relationship) 

                   ----->  child to parent (custom Relationship)  

*/ 

        //Parent to child Query 

        //by using this approach we can query parent records and associated child records 

        //parent soql query(child query) 

        /* To fetch the associated child records we need write query inside (child query) 

           Note: We can Write one or more Inner Queries inside a single SOQL Query  

      Note: SOQL supports Only One Level of Inner Queries. (i.e. Inside an Inner Query, we can't write an another 

            Inner Query) 

*/ 

        //EXAMPLE : Write a programme to fetch account records and associated child records of Contacts , Opportunities ,And Case Records 

        public void relationshipQueries1(String inpnamee){ 

          

            if(inpnamee != null && inpnamee != ''){ 

                list<Account> Accountlst = [Select id, name, rating, industry, annualrevenue, active__C, phone, fax ,(select id , firstName , lastName ,email ,fax from contacts),(Select Name ,amount,stagename from opportunities),(select id , casenumber , priority ,status from cases)from Account where name=:inpnamee]; 

                if(!Accountlst.isempty()){ 

                    for(Account app : Accountlst){ 

                        System.debug('Account list'+app); 

                        System.debug('Size of contacts'+app.contacts.size()); 

                        for(Contact cpp : app.Contacts){ 

                            System.debug('contacts'+cpp); 

                        } 

                        System.debug('size of opportunity is'+app.Opportunities.size()); 

                        for(Opportunity oppty : app.Opportunities){  

                            System.debug('opportunities data'+oppty);   

                        } 

                        System.debug('size of the cases are '+app.cases.size()); 

                        for(case cpp : app.cases){ 

                            System.debug('the cases are'+cpp); 

                        } 

                        /*  

                         execute ==>  

                          practiceapex001 occ = new practiceapex001(); 

                          occ.relationshipQueries1('Edge communications');  */ 

                        } 

                    } 

                } 

            } 

    //|*************************Childtoparent query*************************************************| 

   /*by using relationship quries we can fetch the data from child to parent too   

          (bottom to top approch)  

          up on fetching the record details we can also fetch the parent record details and grand parent record details too 

            By using Child To Parent Query, we can traverse the Objects from Child to the associated parent objects. 

              Grand Grand Parent 

                           ^ 

                           | 

                         Grand Parent 

                                  ^ 

                                  | 

                                Parent Object 

                                          ^ 

                                          | 

                                     Child Object 

                      Note: We can traverse the objects from Bottom to Top upto "5 Levels" 

                      SYNTAX ==> Parentobjname.fieldName 

                          ex > Account.Name 

                          ex to fetch Grandparentdetails Account.Owner.firstName 

*/ 

    public void childtoparentquery(String csenumber){ 

        if(csenumber!=null && csenumber !=''){ 

            //csenumber+='%'; 

             list <case> cse = [Select id , casenumber , Status , priority,Contact.firstName ,Contact.lastName , Contact.Email ,    contact.Account.Name,  contact.Account.Industry,contact.Account.Owner.Email, contact.Account.Owner.Profile.Name from Case where caseNumber=:csenumber]; 

            if(!cse.isEmpty()){ 

                System.debug('Size of case is '+cse.size()); 

                for(case csee : cse){ 

                    system.debug('Case Record is...: '+ csee); 

                    system.debug('Contact Email Id ...: '+ csee.Contact.Email); 

                    system.debug('Account Name...: '+ csee.Contact.Account.Name); 

                    system.debug('Owner Details....: '+ csee.Contact.Account.Owner.Email); 

                    system.debug('Profile Name....: '+ csee.Contact.Account.Owner.Profile.Name); 

  

                    } 

                } 

            } 

        } 

    public void parenttochildforcustom(string suzname){ 

        //relationshipsoqlqueryfor relationship objects , custom objects parent to child relationship query 

        //in subquery or child query we just have to put __r only to child object not to fields 

        /* 

        if(suzname != null && suzname != ''){ 

            list<SUZUKI_MOTOR_ROAD__c> trs = [Select id , Name ,BIKER_EMAIL__c ,BIKE_PRICE__c ,BIKE_PAYMENT_TIME_DATE__c,(select id , name , price__c from Service_boys__r) from SUZUKI_MOTOR_ROAD__c where Name like:suzname]; 

            System.debug('size of the collection is'+trs.size()); 

              

            for(SUZUKI_MOTOR_ROAD__c isuzu : trs){ 

                System.debug('the suzuki data is '+isuzu); 

                for(Service_boys__c sboys:isuzu.Service_boys__r){ 

                    System.debug('the service boys'+sboys); 

                } 

            } 

        } 

*/ 

    } 

    public void dmlinsertoperator(integer ionee){ 

        /* to interact with the database for any actions by apex we will approach through DML Data manipulation language 

           we can write upto 150 dml's inside a transaction more than it will throws the 151 dml exception  

           with single dml we can process a action on about 10000 records  

           ******* DML BEST PRACTICES *****  

             --> Try to add all the data to the collection and then try DML to the collection 

             --> Never try to use dml in for loop  

*/ 

         

        list<Account> asp = new list<Account>(); 

        if(ionee > 1){ 

          for(integer i = 1 ;i<ionee ; i++){ 

            Account Acp = New Account(); 

            Acp.Name = 'vintage industries'; 

            Acp.phone= '90909'; 

             asp.add(Acp); 

              if(ionee != 9){ 

                  System.debug(i); 

              } 

          } 

            insert asp; 

        }   

    } 

    public void Dmlupdateoperator(){ 

        //Dml update the existin records in the database 

        list<Account> Ahp = [Select id , Name , fax , phone from Account where fax =null]; 

        System.debug('non update records'+Ahp.size()); 

        list<Account> iopo = new list<Account>(); 

      //  System.debug('records to be updated'+iopo.size()); 

        for(Account aisi : Ahp){ 

            aisi.Fax = '8622'; 

            iopo.add(aisi); 

        } 

        update iopo; 

        System.debug('records to be updated'+iopo.size()); 

    } 

    public void Databaseclassexmp(){ 

        /* In Dml operation if one dml operation fails it will it will exit the whole transaction 

           with Dml we cant do any partial processing hence we use Database class  

            up on performing database class methods we can perform dml operation on one or more records  

             BENFITS --> 

               ---> With database class methods we can process PARTIAL PROCESSING 

               ---> It provides a tracking mechanisum where we can track records success or failed  

  

                SYNTAX == > 

                       Database.Insert(collectionName); 

                                               this method will allows us to insert one record or multiple records     

                       Database.SaveResult[] <object> = Database.Insert(<CollectionName> , Boolean AllOrNothing);  

                                               this method will allows us the partial processing  

                                 1.CollectionName = > this will describes the which collection we need to insert 

                                 2.Boolean AllOrNothing = > this will describes to insert all the records or nothing 

                                           TRUE => It will acts as Dml insert operation all or nothing 

                                           FALSE => It allows partial processing  

                                 3.Database.SaveResult[] => up on inserting each record or on Database.insert(); action to track the each process  

                                                            apex provides "Database.SaveResult[]" 

                                   Database.SaveResult => this class will contain the result of eachrecord it provides below methods 

                                                          to track the result 

                                              1.Boolean isSuccess(): => this method is used to track the insertion process is success or not it returns true if the insertion process is success or else False   

                                              2.ID GetId(): => this method will return the id of the record which is succesfull* 

                                              3.GetErrors(): =>This method will returns the error message which is occured during the insertion process  

                                                               it returns the error message */ 

                                               

    } 

       }