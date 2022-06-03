public class AccountManager {
    public static void updatesDescField(){
        
        List<Account> originalAccList= [SELECT Id, Name, Description, CreatedDate FROM 
        Account ORDER BY CreatedDate Desc limit 5];
        List<Account> updatesList = new List<Account>();
        for(account eachAcc : originalAccList){
        
        eachAcc.Description = eachAcc.name + ' ' + eachAcc.CreatedDate;
        updatesList.add(eachAcc);
        }
    update updatesList;
    System.debug(updatesList);
    } 
}
