public  class ListOfOdds {
    public ListOfOdds(){
        system.debug('Welcome Numbers !');
    }
    public static void getOdds(integer n){
        List<Integer> oddsList = new List<Integer>();
        for(integer i = 1; i <= n; i++){
        integer odds = math.mod(i,2);
        if (odds == 1) {
            oddsList.add(i);
                
        }
        }
        system.debug(oddsList);
    }  
}
  
