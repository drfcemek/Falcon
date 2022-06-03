/*Store the currency exchange rate values in a Map named ‘currISOCodeAndExchangeRateMap’ 
for any 5 currency ISO codes. Like below:  
a. AUD => 0.73  
b. CAD => 0.78  
c. EUR => 1.13  
d. NZD => 0.68  
e. INR => 0.013  
2. Fetch the currency conversion rate for any one currency ISO code and print it.  
3. Check if the above Map have conversion rate for SAD ISO code.  
4. Collect all the curreny ISO codes from currISOCodeAndExchangeRateMap for which the 
conversion rate is >= 1 in one variable and other iso codes in other variable. Expected Output: 
EUR – In one variable AUD, CAD, NZD, and INR – In another variable.*/

Map<String,Double> currISOCodeAndExchangeRateMap = new Map<String,Double>();

currISOCodeAndExchangeRateMap.put('AUD', 0.73);
currISOCodeAndExchangeRateMap.put('CAD', 0.78 );
currISOCodeAndExchangeRateMap.put('EUR', 1.13);
currISOCodeAndExchangeRateMap.put('NZD', 0.68);
currISOCodeAndExchangeRateMap.put('INR',0.013 );
system.debug('My map is' + currISOCodeAndExchangeRateMap); 



for(String eachCurIsoCod : currISOCodeAndExchangeRateMap.keySet()){
    system.debug( eachCurIsoCod + ' icin currency rate is ' + currISOCodeAndExchangeRateMap.get(eachCurIsoCod));
}


Boolean checkSAD = currISOCodeAndExchangeRateMap.containsKey('SAD');
System.debug('Does the map contain SAD ? => ' + checkSAD);

set<string> moreThan1 = new Set<string>();
Set<string> lessThan1 = new Set<string>();
for( string eachNumber : currISOCodeAndExchangeRateMap.keySet()){
    if(currISOCodeAndExchangeRateMap.get(eachNumber)>=1){
        moreThan1.add(eachNumber);

    }
    else{lessThan1.add(eachNumber);
    }
    System.debug('all iso code more than 1; ' + moreThan1);
    System.debug('all iso code less than 1; ' + lessThan1);
}










