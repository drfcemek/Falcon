public with sharing class SoqlDemo {
   public static void accountSoql_1(){
    //SOQL Query always returns thr=e LIST<sObject>
    List<Account> listAcc = [select Id, name from account where name like 'A%'];
    system.debug('account list = ' + listAcc);
    system.debug('# of accounts = ' + listAcc.size());

    aCCOUNT latestAcc = [select name, website from account order by createdDate desc
    limit 1];
    system.debug(latestAcc);
    }

    public static void accountSoql_2(){
        //SOQL can return only sObject if it is returning ONLY 1 RECORD
        Account latestAcc = [select name, phone, AccountNumber from account order by createddate desc limit 1];
        system.debug('latest account created is ' + latestAcc);

        string accName = latestacc.Name;
        string accPhone = latestAcc.Phone;
        system.debug('acc name is ' + accName);
        system.debug('acc phone is ' + accPhone);
        system.debug('acc account number is  ' + latestAcc.AccountNumber);

    }
    public static void accountSoql_3() {
        List<account> listAcc = [select id, name, phone, accountnumber from account order by CreatedDate DESC];
        system.debug('all accounts ' + listAcc);
         //11 records
        for (account eachAccount : listAcc) {
            //1st record for the 1st iteration. 
            id accid = eachAccount.id;
             string accName = eachAccount.Name;
             string accPhone = eachAccount.Phone;
             system.debug('acc name is ' + accName);
             system.debug('acc phone is ' + accPhone);
             system.debug('acc account number is ' + eachAccount.AccountNumber);
             system.debug('-------------------------------');
            
        }
    }
    public static void soqlDemo_Filter(){
        string accNameFilter = 'Softinnovas';

        list<account> listAcc = [select name from account where name = :accNameFilter];
        system.debug(listAcc);
    }
    public static void accountSOQL_Filter(string accNameFilter){
        list<account> listAcc = [select id, name from account where name = : accNameFilter];
        system.debug(listAcc);
    }
 }