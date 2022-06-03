DateTimemethods dtm = new DateTimeMethods();
date newDate = date.today();
boolean newDateLYcheck = dtm.leapYearCheck(newDate);
system.debug(newDateLYcheck);

boolean lpCheck1 = dtm.leapYearCheck(date.today());
system.debug('Leap year check 1 '+ lpCheck1);
Date dt1 = date.newInstance(2020, 01, 01);
Boolean lpCheck2 = dtm.leapYearCheck(dt1);
system.debug('leap year check 2 ' + lpCheck2);
