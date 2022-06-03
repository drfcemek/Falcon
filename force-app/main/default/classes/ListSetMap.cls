 public class ListSetMap {
 
//     public static void practiceOne(){
//         List<string> listSehirler = new List<string>{'Ankara', 'İstanbul', 'London', 'Paris',
//          'New York', 'Tokyo', 'Antalya', 'London', 'Paris', 'New York', 'Tokyo'};
//          system.debug('Listem ' + listSehirler);
//          integer listBoyut = listSehirler.size();
//          system.debug('Listenin boyutu: ' + listBoyut );
//          //listSehirler.isEmpty();
//          system.debug('Liste bos mudur? ' + listSehirler.isEmpty());
//          string eleman7 = listSehirler.get(6);
//          system.debug('Listenin 7. elemani : ' + eleman7);
//          Set<string> setlist = new Set<string>();
//          setlist.addAll(listSehirler);
//          system.debug( setlist);
//     }
        

        public static void practiceTwo(List<integer> listinteger){

            Set<integer> setOddsNum = new Set<integer>();
            Set<integer> setEvenNum = new set< integer>();
        
            for (integer eachNum : listinteger) {
            integer Num = math.mod(eachNum,2);
            if (Num == 1) {
               
                setOddsNum.add(eachNum);
                  
            
            }else{ 
                setEvenNum.add(eachNum);
                
            }
            
        }
              
        system.debug(setOddsNum);
        system.debug(setEvenNum);    
    }
}
    
    