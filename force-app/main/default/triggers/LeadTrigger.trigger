// trigger LeadTrigger on Lead (After Insert, After Update, Before Insert, Before Update) {

//     if(trigger.isBefore && trigger.isInsert){
   
//         for(Lead eachLead : Trigger.new){
            
//             System.debug(eachLead.LastName + ' is created successfully');
//         }

//         if(trigger.isBefore && trigger.isInsert){
//             for(lead eachLead : trigger.new){
//                 if(eachLead.LeadSource == 'Web'){
//                 system.debug('Rating should be Cold');
//                 }else{
//                     system.debug('Rating should be hot');
//                 }
//             }    
//         }
//     }
// }

// Whenever a new Lead record is created then show "[LeadName] is created successfully".
// Whenever Lead is created with LeadSource as Web then show "Rating should be Cold" message 
// otherwise show "Rating should be hot"