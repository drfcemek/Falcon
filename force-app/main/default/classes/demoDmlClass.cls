public  class demoDmlClass {
    public  demoDmlClass() {
        system.debug('Welcome to the world of SOQL. Please enter the key character to search.');
    }
    public void dmlInsert(string keyChar) {

        List<Account> checkListName = [SELECT id, name, (SELECT name FROM Contacts  WHERE  name LIKE :  keyChar ) FROM Account];
        List<Contact> newContList = new List<Contact>();
            
        for (account eachAcc : checkListName){
            for(contact eachCon : eachAcc.Contacts){
                system.debug(eachCon.id + ': ' + eachCon.name);
                Contact newContact= new Contact();
                newContact.LastName = eachCon.Name + ' copied from account ';
                system.debug(newContact.LastName);
                newContList.add(newContact);
            }

        }

        insert newContList;
    }
}
