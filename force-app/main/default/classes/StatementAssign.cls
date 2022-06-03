public  class StatementAssign {
  public void checkWords(){
      string statement = 'Welcome to the Salesforce world, apex is host in this world.';
      boolean checkHost = statement.contains('HOST');
      system.debug('the "HOST" keyword exist => '+ checkHost);
      string sentence1 = 'My favourite part is apex';
      string senten2 = 'MY FAVOURITE PART IS APEX';
      boolean compare = sentence1.equals(senten2);
      System.debug('Are two strings are equal => ' + compare);
      date dateOfJoin = date.newInstance(2018, 5, 15);
      System.debug('The employee joined to the campany at ' + dateofJoin);
      date today = date.today();
      integer empOfExperience = dateOfJoin.daysBetween(today);
      System.debug('The employee has been working with us for ' + empOfExperience +' days');

  }
}
