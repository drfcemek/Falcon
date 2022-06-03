//AccountInfo.showAccounts();

//   Name         : Summer Fest LLC
//   Parent Account : University of Arizona
//   Type           : echnology PartnerT
//   Rating         : Hot
//   Annual Revenue : 200,000,000

Account newAcc = new Account();
newAcc.Name = 'Summer Fest LLC';
newAcc.Type = 'Technology Partner ';
newAcc.Rating ='Hot';
newAcc.AnnualRevenue = 200000000;
insert newAcc;

List<Contact > newContacts = new List<Contact >();
for(integer i =1; i<=3; i++);
contact eachNewCnt = new contact();
newContacts.add(eachNewCnt);
eachNewCnt.AccountId = newAcc.id;
eachNewCnt.LastName = 'Event Planner';
eachNewCnt.Phone ='+1 2345 7896';
eachNewCnt.LeadSource ='Web';
insert eachNewCnt;

// Last Name    : Event Planner ( 1, 2 , 3)
//             Phone        : +1 2345 7896
//             Account Name : Summer Fest LLC
//             Lead Source  : Web





