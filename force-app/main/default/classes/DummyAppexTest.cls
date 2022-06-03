@isTest
public  class DummyAppexTest {
    @isTest
    public static void DummyApexTestRevenue() {
        account acc = new account();
        acc.Name = 'acc1';
        acc.AnnualRevenue =300;
        account acc2 = new account();
        acc2.Name= 'acc2';
        acc2.AnnualRevenue= 200;
        list<account> DummyAccList= new list<account>{acc,acc2};
        DummyAccList.add(arg0);
        insert DummyAccList;

        dummyappex.Increaserevenue(DummyAccList);

        system.assertEquals(2, DummyAccList[0].AnnualRevenue);
        system.assertEquals(8, DummyAccList[1].AnnualRevenue);


    }
}
