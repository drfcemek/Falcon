@isTest
public class OpportunityTriggerTest {
    @TestSetup
    private static void setupData() {
        Account acc1 = new account();
        acc1.Name = 'SI Test';
        acc1.Industry = 'Energy';

        Account acc2 = new account();
        acc2.Name = 'UI Test';
        acc2.Industry = 'Energy';

        Account acc3 = new account();
        acc3.Name = 'PI Test';
        acc3.Industry = 'Banking';

        list<account> listAcc = new list<account>{acc1, acc2, acc3};
        insert listAcc;

        list<Opportunity> listOpps = new list<Opportunity>();
        for (Integer i = 0; i < 300; i++) {
            Opportunity o = new Opportunity();
            
            if (i < 100) {
                o.accountid = acc1.id;
            } else if (i < 200) {
                o.accountid = acc2.id;
            } else if(i < 300){
                o.accountid = acc3.id;
            }
            listOpps.add(o);
        }
        insert listOpps;
    }
    @isTest
    private static void sampleOppTest(){
        List<Opportunity> listOpps2 = [SELECT Id, NAME, StageName, CloseDate FROM Opportunity WHERE StageName ='Qualification' AND name= 'Prospecting'];
        for(Opportunity eachOpps: listOpps2){
           eachOpps.CloseDate = Date.today();
           listOpps2.add(eachOpps);
        }
        update listOpps2;

        Test.startTest();
        OpportunityTriggerHandler.updateOpp2();
        Test.stopTest();
    }
}

    






    