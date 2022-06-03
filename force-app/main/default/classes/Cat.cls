public  class Cat {
    public string name ;
    public string color;
    public Cat(){
        system.debug( ' constructor called. ');    
    }
    public Cat(string n, string c){
        this.name = n;
        this.color = c;
        sleeping();
    }
    public void sleeping(){
        system.debug( name + 'is sleeping');
    
    }
public static void allcats(){
    Cat falconsCat = new Cat('fluffykins', 'white'); 
    Cat vitapCat = new Cat ('Simba', 'brown');
    Cat sumitCat = new Cat('Smokey', 'gray');

    List<cat> cats = new list<cat>();
    Cats.add(falconsCat);
    Cats.add(vitapCat);
    system.debug('all cats are ' + cats);

}   
}