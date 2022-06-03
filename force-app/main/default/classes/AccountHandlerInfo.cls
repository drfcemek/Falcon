public class AccountHandlerInfo {
   public static List<Account> insertNewAccount(List<string> ListOfString){
       

    List<Account> ListOfAccounts = new List<Account>();  

        if(!ListOfString.isEmpty()){
            
            for(string eachAccName: ListOfString){
                account newAcc = new account();
                newAcc.name = eachAccName;
                ListOfAccounts.add(newAcc);            
            }
            insert ListOfAccounts;
            return ListOfAccounts;
        
        }else {
            System.debug('check your parameter which should not be blank');
            return null;   
        }
    }
}