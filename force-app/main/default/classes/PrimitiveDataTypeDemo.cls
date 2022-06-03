public  class PrimitiveDataTypeDemo {
   public void printBasicDataType(){
  /*  string batchName = 'Falcon 6';
    Integer totalCandidates = 120;
    boolean isAdminCompleted = true;
   
    
    System.debug('Batch name is ' + batchName);
    System.debug('Total # of candidates: ' + totalCandidates);
    system.debug('Admin completed? ' + isAdminCompleted);

   }
}
*/
Decimal decVal = 25.35;
System.debug('Decimal: ' + decVal);//Decimal

Long longValue = 21424564679879L;
System.debug('Long: ' + longValue);


Object obj = 'this is a string';
Object obj2 = 10;

system.debug('object 1 : ' + obj);
system.debug('object 2 : ' + obj2);

Id id1 = '0015j00000ccro0AAA';
system.debug('id ' + id1);
} 
}