public with sharing class AccountInfo {
    public static void showAccounts(){
        List<Account> accAll = [Select ID, Name, (Select CloseDate FROM Opportunities
         WHERE CloseDate > TODAY) from Account] ;
    
        for(Account eachAccName :  accAll){
        system.debug( eachAccName);
           for(Opportunity oppList : eachAccName.Opportunities ){
               system.debug('the opportunity close date is in future' +  oppList );


           }
        }
    }
}
