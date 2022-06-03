public class Employees {
    public static void Info(){
        List<String> empList = new List<String>{'Chris Art' , 'Terri Show', 
        'Barrie Move','Jim Parrot', 'Mayu Martin', 'Donna simpson'};
        empList.sort();
        system.debug('Employee name is : ' + empList);
    }
}