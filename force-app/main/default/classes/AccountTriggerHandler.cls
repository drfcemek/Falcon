 public class AccountTriggerHandler {
//     public static void updateAccountDescription(List<account> accTriggerNew,
//                                                 List<account> accTriggerOld,
//                                                 Map<id, account> accTriggerNewMap,
//                                                 Map<id, account> accTriggerOldMap){
//          for(account eachAcc: accTriggerNew){
//             boolean updateDesc = false;
//             if(accTriggerOldMap == null && eachAcc.Active__c == 'Yes'){
//                 updateDesc = true;
//             }
//             if(accTriggerOldMap != null){
//                 Account oldAccount = accTriggerOldMap.get(eachAcc.ID);
                
//                 string oldAccountActive = oldAccount.Active__c;
//                 //check if active is updated
//                 //active is changed to 'Yes'
//                 if(eachAcc.Active__c == 'Yes' &&
//                     oldAccountActive != 'Yes'
//                 ) {
//                     updateDesc = true;
//                 }
//             }
//             if(updateDesc){
//                 eachAcc.Description = 'Account is now active. Enjoy!';
//             }
//         }
//     }
//     public static void updateVIPForAllContacts(list< account> accTriggerNew, 
//                                                list<account> accTriggerOld,
//                                                map<id,account> accTriggerNewMap,
//                                                map<id,account> accTriggerOldmap)
//     {
//     //get set of account Ids where only VIP field is updated
//     set<id> setAccIDs = new set<id>();
//     for (account eachAcc: accTriggerNew){
//         //check if the field is updated
//         if(eachAcc.VIP__c!= accTriggerOldMap.get(eachAcc.id).VIP__c ){
//             setAccIDs.add(eachAcc.id);
//         }
//     }
//     //Gets list of contacts for ACCOUNTS where VIP is Updated
//     List<contact> listContacts = [SELECT id, Name, Account.id, VIP__c FROM Contact WHERE Account.Id IN : setAccIDs];
//     for(contact eachContact : listContacts){
//         boolean accVIP = accTriggerNewMap.get(eachContact.Account.Id).VIP__c;
//         eachContact.VIP__c = accVIP;
//     }
//     update listContacts;
    
// }
// }
//=================================================================================================================================
//  5/19/2022 Vitap @isTestSetup Lesson============================================================================================

// public class AccountTriggerHandler {
//     public static void updateAccountDescription(List<account> accTriggerNew,
//                                                 List<account> accTriggerOld,
//                                                 Map<id, account> accTriggerNewMap,
//                                                 Map<id, account> accTriggerOldMap){
//         system.debug('inside handler method');
//          for(account eachAcc: accTriggerNew){
//             boolean updateDesc = false;
//             if(accTriggerOldMap == null && eachAcc.Active__c == 'Yes'){
//                 updateDesc = true;
//             }
//             if(accTriggerOldMap != null){
//                 Account oldAccount = accTriggerOldMap.get(eachAcc.ID);
                
//                 string oldAccountActive = oldAccount.Active__c;
//                 //check if active is updated
//                 //active is changed to 'Yes'
//                 if(eachAcc.Active__c == 'Yes' &&
//                     oldAccountActive != 'Yes'
//                 ) {
//                     updateDesc = true;
//                 }
//             }
//             if(updateDesc){
//                 eachAcc.Description = 'Account is now active. Enjoy!';
//             }
//         }
//     }
//     public static void updateVipForAllAcontacts(list<account> accTriggerNew, list<account> accTriggerOld, 
//                                     Map<id, account> accTriggerNewMap, map<id, account> accTriggerOldMap){
//             system.debug('update all contact\'s VIP field');
//             set<id> setAccIds = new Set<id>();
//             for(account eachAcc: accTriggerNew){
//                 if(eachAcc.Vip__c != accTriggerOldMap.get(eachAcc.Id).Vip__c){
//                     setAccIds.add(eachAcc.Id);
//                 }
//             }

//             List<contact> listContacts = [select id, name, account.id, vip__c from contact where account.id in :setAccIds];

//             for(contact eachContact : listContacts){
//                 Account newAccount = accTriggerNewMap.get(eachContact.account.id);
//                 boolean newAccVip = newAccount.vip__c;

//                 eachContact.vip__c = newAccVip;
//             }
//             if(!listContacts.isEmpty()){
//                 update listContacts;
//             }


//     }
 }