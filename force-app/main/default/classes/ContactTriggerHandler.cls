// public  class ContactTriggerHandler {
//     public static List<Contact> updatedAccForContact(list<contact> cntTriggerNew,
//                                                      list<contact> cntTriggerOld,
//                                                      map<id,contact> cntTriggerNewMap,
//                                                      map<id,contact> cntTriggerOldMap ) {

//         set<id> accIdSet = new set<id>();
        
//         for(contact eachCnt: cntTriggerNew ){
//             contact cnt = new contact();
//             if(cnt.AccountId != null){
//             accIdSet.add(cnt.AccountId);
        
           
//             }
//         }
//     }
// }
public class ContactTriggerHandler {
   public static void contactUpdateValidation1(List<contact> cntTriggerNew, List<contact> cntTriggerOld,
                                         Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
            //.AddError is allowed in Trigger.NEW.
            //it is not allowed in trigger.old
            for(contact eachContact: cntTriggerNew){
                contact oldContact = cntTriggerOldMap.get(eachContact.id);
                if(oldContact.LeadSource == 'Partner Referral'){
                    eachContact.addError('Cannot update contact where lead source is Partner Referral');
                }
            }

   }

   public static void contactUpdateValidation2(List<contact> cntTriggerNew, List<contact> cntTriggerOld,
    Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
        for(contact eachContact: cntTriggerNew){
                contact oldContact = cntTriggerOldMap.get(eachContact.id);
                if(oldContact.LeadSource != eachContact.LeadSource){
                    string customValidation = system.label.contactValidation2;
                    eachContact.LeadSource.addError(customValidation);
                }
            }
    }
}
