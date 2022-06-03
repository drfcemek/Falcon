@istest
public  class DmlDemoTest {
    @istest
    private static void dmlDemoTest1() {
        DmlDemo.dmlInsertDemo_stndObj();
        List<Account> myAccList = [SELECT id, Name FROM Account WHERE Name = 'SoftInnovas'];
        System.assertEquals('SoftInnovas', myAccList[0].Name);
        System.assertEquals(1, myAccList.size());
    
    }
}