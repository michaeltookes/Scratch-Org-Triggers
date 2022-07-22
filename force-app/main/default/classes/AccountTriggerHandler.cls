public with sharing class AccountTriggerHandler {

    public static void beforeInsertLogic(List<Account> newAccounts) {
        List<Account> accountCollection = new List<Account>();
        for (Account acct : newAccounts) {
            if (acct.BillingState == 'TX') {
                acct.Rating = 'Hot';
            } else if (acct.BillingState == null) {
                acct.Rating = 'Cold';
            } else {
                acct.Rating = 'Warm';
            }
            accountCollection.add(acct);
        }
    }    
}
