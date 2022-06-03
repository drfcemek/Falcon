public  class EmployeeInfo {
    public static void showInfo(){
        
        Map<string, string> employeeMap = new Map<string, string>();
        employeeMap.put('001', 'Jimmy Jackson');
        employeeMap.put('002', 'Terry Mayor');
        employeeMap.put('003', 'Barrie Barner');
        
        set<string> empNumSet = employeeMap.keySet();
        
        for(String  eachNum : empNumSet){
        system.debug('Input : ' + eachNum);
        
        string empName = employeeMap.get(eachNum);
        System.debug(empName);
        }
        
    }
   
}
