public with sharing class AccountQueueableExample implements Queueable {
    public List< Account> ListAccount ;
    //parameterized constructor
    public AccountQueueableExample(List<Account> accList){
        listAccount = accList;
        
    }
    //mandatory method
    public void execute(QueueableContext qc){
        for (account acc : ListAccount){
            //Update the Account Name
            acc.Name = acc.Name + '-- SI';
        }
        update ListAccount;
    }
}
