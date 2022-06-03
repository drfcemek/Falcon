public  class IterationExercise2 {
    public  void getPerfectAverage(integer num1, integer num2) {
        system.debug('Input num1 = ' + num1);
        system.debug('Input num2 = ' + num2);
        integer average = (num1 + num2)/2;
        system.debug('Output: ' + average);

    system.debug('Calculation: ');
    integer sum = num1;
    integer counter = 1;
    for(integer i= (num1+1); i <= num2; i++){
        sum =sum + i;
        counter++;
    }
     string sum2 = ' ';
     for(integer i = num1; i <= num2; i++){
         sum2 += string.valueOf(i) + ' + ';
     }
     system.debug( sum2 + ' =' + sum);
    integer totalNumber = num2-num1+1;
    integer result = sum/totalNumber;
    system.debug('Total '+ totalNumber + ' numbers between num1 to num2');
    system.debug(sum + ' / ' + totalNumber + ' = ' + result);
    }
}  

