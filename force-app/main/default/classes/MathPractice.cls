public class MathPractice {
   public Decimal practiceOne(Decimal x, Decimal y){
       Decimal perOfRectangle = 2 * (x + y);
       return perOfRectangle;

   }
   public Decimal practiceTwo(Decimal kg, Decimal b){

    //VKI = Kilo(kg)   / ((boy(m)  * boy(m))
       Decimal vKI = kg / (b * b);
       return vKI;

   }
   public Decimal practiceThree(Integer a, Integer b){
       Decimal avg = (a + b)/2;
       return avg;
   }
   public Decimal practiceFour(Decimal expenses){
       Decimal bonus;
       if (expenses <= 0){
           System.debug('Hatali bir deger girdiniz.');
       }else if(expenses >= 0 && expenses <=49){
           System.debug('Bonus kazanamadiniz.');   
       }else if(expenses>=50 && expenses<=199){
           bonus=10;
           System.debug('100$ karsiliginda ' + bonus + '$ kazandiniz.');
       }else if(expenses>= 200 && expenses<=499){
           bonus = 30;
           System.debug('300$ karsiliginda ' + bonus + ' $ kazandiniz.');
       }else if(expenses>=500){
           bonus = 50;
           System.debug('750 $ alisveris karsiliginda ' + bonus + ' $ kazandiniz.');
       }
       return expenses;

       
   }
   public Decimal practiceFive(string ihtiyac, integer adet){
          integer fiyat;
          if (ihtiyac == 'simit'){
              fiyat=2;
          }else if (ihtiyac == 'ekmek'){
             fiyat =1;
          }else if (ihtiyac == 'kek') {
            fiyat=3;  
          }
          decimal toplam = fiyat * adet;
          System.debug('toplam ödeyeceğiniz miktar ' + ihtiyac + ' icin ' + toplam + ' $.');
          return toplam;
         
   }

   public Decimal practiceFive2(string ihtiyac, integer adet){ 
        Decimal fiyat2; 
        switch on ihtiyac {
            when  'simit'{
                fiyat2=2;
            }
            when 'ekmek'{
                fiyat2 =1;
            }
            when 'kek' {
                fiyat2 =3;
            }
        }
            Decimal toplam2 = fiyat2 * adet;
            System.debug('toplam ödeyeceğiniz miktar ' + ihtiyac + ' icin ' + toplam2 + ' $.');
            return toplam2;
        }
    
   public Decimal practiceSix(decimal kenar1, decimal kenar2, string islem){
        
        decimal sonuc;
        if (islem == 'alan') {
            sonuc = kenar1 * kenar2;
            integer rounded = math.round(sonuc);
            system.debug('Dikdörtgenin alani  : ' + rounded);
        }else if (islem == 'cevre') {
             sonuc = 2 * (kenar1 + kenar2);
             integer rounded = math.round(sonuc);
             system.debug('Dikdörtgenin cevre uzunlugu : ' + rounded);
        }else {
            system.debug('Lütfen geçerli bir işlem türü giriniz!'); 
        }
        return sonuc;

        }
    public static string practiceSeven(Decimal kg, Decimal m){
        string yorum = ' ';
        decimal vki2 = kg / m.pow(2);
        decimal setScaled= vki2.setScale(1);
        system.debug( 'Vucut kitle indexi : ' + setScaled);
        
        
        if (setScaled > 0 && setScaled<=18.4){
            yorum = 'Zayif';
            system.debug(setScaled + ' : -> ' + yorum );    

        }else if (setScaled >= 18.5 && setScaled<=24.9){
            yorum = 'Normal';
            system.debug(setScaled + ' : -> ' + yorum );
        }else if (setScaled>= 25 && setScaled<=29.9){
            yorum = 'Kilolu';
            system.debug(setScaled+ ' : -> ' + yorum ); 
        }else  {
            system.debug('Lütfen girmiş olduğunuz boy ve kilo değerlerini kontrol ediniz!');
                
    }
        return yorum;

    }
    // Task 20. "MathPractice" Class'ının içerisine "practiceEight" isimli bir
    //  method oluşturun. Bu method iki integer parametere kabul etsin ve 
    //  iki parametre arasındaki sayıların toplamını return etsin. [İpucu: 
    //  Toplama işlemine parametre değerleri dahil edilmeli ve parametrelerin
    //   eşitlik durumunda iki parametre toplanmalıdır.]
    public static integer practiceEight(integer int1, integer int2){
        integer toplam = 0;
         
        if(int1 < int2){
            for ( integer i = int1; i <= int2; i++){
               toplam += i;     
            }
            System.debug(toplam);

        }else if(int1 > int2){
            for( integer i = int1; i>=int2; i--){
            toplam += i;       
        }
        System.debug(toplam);        
        }else {
            toplam = int1 + int2;
            system.debug(toplam);
        }
        return toplam;
    } 
    public static void ageCalculate( Map<string, date> mapBirth){
       
        decimal age = 0;
        for(string eachName : mapBirth ){
           mapBirth.eachName =  mapBirth.keySet();
           date birth = mapBirth.get( mapBirth.keySet());
           decimal age =

        }
         
    }
}          
    




     