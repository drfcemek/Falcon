public  class Car {
    //public variable defined directly inside class
    //this can be accessed outside of class
    public string carColor = ' ';
    //private variable.
    //this can only be accessed within class

    public string carName = ' ';

    private integer maxSpeedKMHour = 150;

    //1. access modifier
    //2.return type
    //3.methodName followed by ()
    public void switchOn() {
        //this is main body
        //updated code
        system.debug('starting the car.');

    }
    public void drive(){
        system.debug('driving car ' + carName);
    }
    public void driveAtMaxSpeed(){
        string drivingDescription = 'Driving ' + carName + 'at ' + maxSpeedKMHour + ' km/h ';
        system.debug(drivingDescription);
    }
}
