Map<string, Country_Code__c> mapCC = Country_Code__c.getAll();
system.debug('map of country code = ' + mapCC);
for(string eachCountry: mapCC.keySet()){
    system.debug('Country ' + eachCountry + ' , code ' + mapCC.get(EachCountry).Country_Code__c) ;
}


/*22:17:40:181 USER_DEBUG [2]|DEBUG|map of country code = {Canada=Country_Code__c:{LastModifiedDate=2022-05-28 02:02:05, IsDeleted=false, CreatedById=0058c00000Aws6MAAR, CreatedDate=2022-05-28 02:02:05, Country_Code__c=CAN, Id=a028c00000ZR5D0AAL, LastModifiedById=0058c00000Aws6MAAR, SetupOwnerId=00D8c000006eim6EAA, Name=Canada, SystemModstamp=2022-05-28 02:02:05}, India=Count028ry_Code__c:{LastModifiedDate=2022-05-28 02:02:18, IsDeleted=false, CreatedById=0058c00000Aws6MAAR, CreatedDate=2022-05-28 02:02:18, Country_Code__c=IND, Id=a