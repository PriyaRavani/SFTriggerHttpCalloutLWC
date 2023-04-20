public class UpdateNumberOfContacts {
    public static void UpdateAccount(set<Id> accIds){
        List<AggregateResult> Results = [SELECT AccountId, count(Id)NumberOfContacts
                                             FROM Contact
                                             where AccountId IN: accIds
                                             GROUP BY AccountId];
            
            List<Account> AccountsToUpdate = new list<Account>();
            for(AggregateResult result : Results){
                string accId = String.valueOf(result.get('AccountId'));
                Integer Numberofcontact = Integer.valueOf(result.get('NumberOfContacts'));
                
                Account acc = new account(Id=accId, Number_of_Contacts__c=Numberofcontact);
                AccountsToUpdate.add(acc);
            }
            update AccountsToUpdate;
    }

}