public  class IterationExercise {
    public void getMultiplicationTable(integer num){
       system.debug('Input = ' + num);
       
       for( integer i =1; i < 11; i++){
       integer multi = i * num;
       system.debug('Output : ' + i + ' *  ' + num + ' = ' + multi);
       }             

    }
}
