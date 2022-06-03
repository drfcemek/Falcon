trigger OpportunityTrigger on Opportunity (before insert, before update, after insert, after update) {
    if(trigger.isBefore && trigger.isUpdate){
        OpportunityTriggerHandler.updateOpp2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}

// Please Write a trigger for the object Opportunity Classes.  
// • Create a class with the following methods. 
// o Create one Account Record. 
// o Create a method which accepts Account ID as parameter and create few 
// opportunity records with name = ‘’ Prospecting” and few records with 
// Stage = ‘’ Qualification”. 
// o Create a Trigger for Opportunity object with handler class which updates 
// close date as Todays date with stage= ‘Opportunity’. 
// • Write a Test class for the above code. 