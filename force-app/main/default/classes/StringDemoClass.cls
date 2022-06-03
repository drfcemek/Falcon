public  class StringDemoClass {
    public void stringMethod1(){
        String sessionDescription = 'Learning string methods in Apex language.';
        integer lengthofStr = sessionDescription.length();
        System.debug('Length of string is ' + lengthOfStr);
        //upper case
        string sessionDescriptionIncaps = sessionDescription.toUpperCase();
        System.debug('In caps = ' + sessionDescriptionInCaps);
        String firstLetter = sessionDescription.capitalize();
        System.debug('Original string = ' + firstLetter);
        boolean containsApex = sessionDescription.contains('apex');
        System.debug('has apex?' + containsApex);
        boolean containSalesforce = sessionDescription.contains('Salesforce');
        System.debug('has Salesforce????' + containSalesforce);
        boolean containAPEX2 = sessionDescription.containsIgnoreCase('APEX');
        System.debug('has APEX? '+ containAPEX2);
              //3.b check APEX
              sessionDescription.containsIgnoreCase('APEX'); //this is valid.

              //4. 
              string apexx = 'apex';
              string ap = 'APEX';
              //equals check if two strings are same or not.
              //if same returns true.
              //string1.equals(string2)
              boolean apexCheck = apexx.equals(ap);
              system.debug('apex check ' + apexCheck);
          }
      }
