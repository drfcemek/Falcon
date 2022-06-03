public  class DmlDemo2 {
    public static void dmlMultipleRecordUpdate2_right(){

        List<Account> listAcc = [SELECT Id, name, Description from Account  ];
        list<account > updateAccounts = new list<Account>();

        for(account acc: listAcc){
            acc.name += 'vB';
            acc.Description = 'Update via bulk DML';
            updateAccounts.add(acc);
        }
        if(!updateAccounts.isEmpty()){
            System.debug('success');
            update updateAccounts;
        }
    }
   
}
