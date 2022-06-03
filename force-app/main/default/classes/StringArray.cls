public  class StringArray {
    public static List<string> ganerateStringarray(integer numOfString) {
        list<string> testScript = new list<string>();

        for(integer i=0; i< numOfString; i++){
            testScript.add('Test ' + i);
        }
        System.debug(testScript);
        return testScript;
    }
}
