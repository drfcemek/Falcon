public  class OpportunityTriggerHandler {
    public static void createAccWithOpp(map<id, Account> AccountTriggerNewMap){
        account acc = new account();
        List<Opportunity> myOppList = new List<Opportunity>();
        for(Integer i=0; i<150; i++){
            Opportunity opp = new Opportunity();
          opp.Name = 'Prospecting';
          opp.StageName = 'Qualification';
          opp.AccountId = acc.Id;
          myOppList.add(opp);
        }
        if(!myOppList.isEmpty()){
           insert myOppList;
        }
    }
    public static void updateOpp2(List<Opportunity> accTriggerNew,
                                  List<Opportunity> accTriggerOld,
                                  Map<id, Opportunity> accTriggerNewMap,
                                  Map<id,Opportunity> accTriggerOldMap){
        List<Opportunity> updatedOppList = new List<Opportunity>();
        for(Opportunity eachOpp: accTriggerNew){
            eachOpp.CloseDate = Date.today();
            eachOpp.StageName = 'Opportunity';
            updatedOppList.add(eachOpp);
        }
        if(!updatedOppList.isEmpty()){
            update updatedOppList;
        }
    }
}
//  Please Write a trigger for the object Opportunity Classes.  
// • Create a class with the following methods. 
// o Create one Account Record. 
// o Create a method which accepts Account ID as parameter and create few 
// opportunity records with name = ‘’ Prospecting” and few records with 
// Stage = ‘’ Qualification”. 
// o Create a Trigger for Opportunity object with handler class which updates 
// close date as Todays date with stage= ‘Opportunity’. 
// • Write a Test class for the above code. 
