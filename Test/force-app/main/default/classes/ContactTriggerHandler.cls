public class ContactTriggerHandler {
    public static void AfterInsertHandler(List<contact> newContact){
        set<Id>accIds = new set<Id>();
        for(Contact con : newContact){
            if(String.isNotBlank(con.AccountId)){
                accIds.add(con.AccountId);
            }
        }
        UpdateNumberOfContacts.UpdateAccount(AccIds);
    }
    
    public static void AfterUpdateHandler(List<contact> newContacts, Map<Id,Contact> oldContacts){
        set<Id>accIds = new set<Id>();
        for(Contact con : newContacts){
            if(String.isNotBlank(con.AccountId)&& oldContacts.get(con.Id).AccountId != con.AccountId){
                accIds.add(con.AccountId);
                accIds.add(oldContacts.get(con.Id).AccountId);
            }
        }
        UpdateNumberOfContacts.UpdateAccount(AccIds);
        
    }
    
    public static void AfterDeleteHandler(List<contact> oldContact){
        set<Id>accIds = new set<Id>();
        for(Contact con : oldContact){
            if(String.isNotBlank(con.AccountId)){
                accIds.add(con.AccountId);
            }
        }
        UpdateNumberOfContacts.UpdateAccount(AccIds);
        
        
    }
    
    public static void AfterUndeleteHandler(List<contact> newContact){
        set<Id>accIds = new set<Id>();
        for(Contact con : newContact){
            if(String.isNotBlank(con.AccountId)){
                accIds.add(con.AccountId);
            }
        }
        UpdateNumberOfContacts.UpdateAccount(AccIds);
        
    }
    
}