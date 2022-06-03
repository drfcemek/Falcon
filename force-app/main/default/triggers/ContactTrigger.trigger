trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {
    // if(trigger.isBefore && trigger.isUpdate){
    //     ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    //     ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    // }
// ===========5/12/2022 Turkish Assignment=======================================================

    // . Bir Contact insert edildiğinde First Name yazılmamışsa 'Bu record'da First Name yazılmadı.. Name sadece
    //  Last Name = [lastName] den oluşuyor.'
    //  mesajını system debug ile konsolda yazdıran bir trigger tasarlayınız.

// trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {    
//     if(trigger.isBefore && trigger.isInsert){
//         for(contact eachCont: trigger.new){
//             if(eachCont.FirstName == null){
//                 System.debug('Bu recortta First Name yazilmadi.. Name sadece Last Name = ' +
//                  eachCont.lastName +' den oluşuyor.');

//             }
//         }
//     }
// }
// trigger ContactTrigger on Contact (before insert, after insert, before update, after update, after delete, after undelete) {
//     if(trigger.isBefore && trigger.isUpdate){
//         ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
//         ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
//     }
//     Set<Id> accountIds = new Set<Id>();
//     if(trigger.isAfter){
//         if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
//             for (contact c : trigger.new) {
//                 if(c.accountid != null){
//                     accountIds.add(c.AccountId);
//                 }
//             }
//         }
//         if(trigger.isUpdate || trigger.isdelete){
//             for (contact c : trigger.old) {
//                 if(c.accountid != null){
//                     accountIds.add(c.AccountId);
//                 }
//             }
//         }

//         if(!accountIds.isEmpty()){
//             List<account> accList = [select id, number_of_contacts__c, (select id from contacts)
//             from account  account where id in :accountIds];

//             if(!accList.isEmpty()){
//                 list<account> updateAccList = new list<account>();
//                 for (account eachAcc : accList) {
//                     List<contact> listContacts = eachAcc.contacts;
                    
//                     Account acc = new account();
//                     acc.id = eachAcc.id;
//                     acc.number_of_contacts__c = listContacts.size();
//                     updateAccList.add(acc);
//                 }
//                 if(!updateAccList.isEmpty()){
//                     update updateAccList;
//                 }
//             }
//         }
//     }
// =======================TURKISH REVIEW 5/14/2022 ===============================================================================

// trigger ContactTrigger on Contact (before insert, after insert, before update, after update, after delete, after undelete) {
//     if(trigger.isBefore && trigger.isUpdate){
//         ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
//         ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
//     }
//     Set<Id> accountIds = new Set<Id>();
//     if(trigger.isAfter){
//         if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
//             for (contact c : trigger.new) {
//                 if(c.accountid != null){
//                     accountIds.add(c.AccountId);
//                 }
//             }
//         }
//         if(trigger.isUpdate || trigger.isdelete){
//             for (contact c : trigger.old) {
//                 if(c.accountid != null){
//                     accountIds.add(c.AccountId);
//                 }
//             }
//         }

//         if(!accountIds.isEmpty()){
//             List<account> accList = [select id, number_of_contacts__c, (select id from contacts)
//             from account  account where id in :accountIds];

//             if(!accList.isEmpty()){
//                 list<account> updateAccList = new list<account>();
//                 for (account eachAcc : accList) {
//                     List<contact> listContacts = eachAcc.contacts;
                    
//                     Account acc = new account();
//                     acc.id = eachAcc.id;
//                     acc.number_of_contacts__c = listContacts.size();
//                     updateAccList.add(acc);
//                 }
//                 if(!updateAccList.isEmpty()){
//                     update updateAccList;
//                 }
//             }
//         }
//     }
// trigger ContactTrigger on Contact(before insert, after insert, before update, after update, after delete, after undelete) {
//     if(trigger.isAfter){
//         ContactTriggerHandler.updatedAccForContact(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
//     }

// }trigger ContactTrigger on Contact (before insert, after insert, before update, after update, after delete, after undelete) {
    if(trigger.isBefore && trigger.isUpdate){
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    Set<Id> accountIds = new Set<Id>();
    if(trigger.isAfter){
        if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
            for (contact c : trigger.new) {
                if(c.accountid != null){
                    accountIds.add(c.AccountId);
                }
            }
        }
        if(trigger.isUpdate || trigger.isdelete){
            for (contact c : trigger.old) {
                if(c.accountid != null){
                    accountIds.add(c.AccountId);
                }
            }
        }

        if(!accountIds.isEmpty()){
            List<account> accList = [select id, number_of_contacts__c, (select id from contacts)
            from account where id in :accountIds];

            if(!accList.isEmpty()){
                list<account> updateAccList = new list<account>();
                for (account eachAcc : accList) {
                    List<contact> listContacts = eachAcc.contacts;
                    
                    Account acc = new account();
                    acc.id = eachAcc.id;
                    acc.number_of_contacts__c = listContacts.size();
                    updateAccList.add(acc);
                }
                if(!updateAccList.isEmpty()){
                    update updateAccList;
                }
            }
        }
    }

}