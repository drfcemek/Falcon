List<Account> accs = [SELECT id, name from account];
AccountQueueableExample qa = new AccountQueueableExample(accs);
id jobid = System.enqueueJob(qa);
System.debug('job id is ' + jobid);
