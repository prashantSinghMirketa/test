public class AccountTriggerHandler {
	public static void beforeInsert(List<Account> newAccounts) {
        // Check for the user's create permission on Account object
       for (Account acc : newAccounts) {
                 if (!Schema.sObjectType.Account.isCreateable()) {
                acc.addError('You do not have permission to create Account records.');
           		 }
        }
    }

    public static void beforeDelete(List<Account> oldAccounts) {
        // Check for the user's delete permission on Account object
      		for (Account acc : oldAccounts) {
                  if (!Schema.sObjectType.Account.isDeletable()) {
                acc.addError('You do not have permission to delete Account records.');
           		 }
        }
    }
}