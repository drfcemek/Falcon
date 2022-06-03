public  class AgeOfPerson {
   public void showAgeOfPerson(){
       date dOB = date.newInstance(1972, 6, 2);
       date currentDay = date.today();

       integer aopInDays =dOB.daysBetween(currentDay);
       System.debug('Age in days => ' +aopInDays);

       integer aopInMonths = dOB.monthsBetween(currentDay);
       System.debug('Age in months=> ' + aopInMonths);

       integer aopInYears = aopInMonths/12;
       System.debug('Age in years => ' + aopInYears);
   }   

    public void showExpirationDay(){
        //expiration  end day is 2 years and 7 months later(940 days)
        date currentDay = date.today();
        date expirationDay = currentDay.addDays(940);
        System.debug('Expiration days : ' + expirationDay );
    }
}