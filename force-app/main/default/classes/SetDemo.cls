public class SetDemo {
    public static void citySet(){
        //1. creating empty set string collection
        set<string> cities = new set<string >();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Berlin');
        system.debug('Set of cities ' + cities);
    }
    public static void randomIntegerSet(){
        set<integer> setInteger = new set<integer>();
        setInteger.add(10);
        setInteger.add(15);
        setInteger.add(21);
        setInteger.add(15);
        setInteger.add(10);
        setInteger.add(15);
        system.debug('Set of random integers' + setInteger);
    }
    public static set<integer> setFromList(list <integer> intList){
        Set<integer> intSet = new set<integer>();
        intSet.addAll(intList);
        return intSet;
    }
    public static set<string> capitalizeSet(set<string> setString){
        set<string> upperCaseSet = new set<string>();
        
        for(string eachString : setString){
            //use .capitalize method of string
            string tempStr = eachString.toUpperCase();
            upperCaseSet.add(tempStr);

        }
        return upperCaseSet;
       
    }


}
