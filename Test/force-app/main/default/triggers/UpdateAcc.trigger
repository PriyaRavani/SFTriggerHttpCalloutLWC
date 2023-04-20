trigger UpdateAcc on Contact (after insert, after update, after delete, after undelete) {
    switch on trigger.operationType{
        when AFTER_INSERT{
            ContactTriggerHandler.AfterInsertHandler(trigger.new);
        }
        
        when AFTER_UPDATE{
            ContactTriggerHandler.AfterUpdateHandler(trigger.new, trigger.oldMap);
            
        }
        when AFTER_DELETE{
            ContactTriggerHandler.AfterDeleteHandler(trigger.old);
        }
        when AFTER_UNDELETE{
            ContactTriggerHandler.afterUndeleteHandler(trigger.new);
        }
        
    }
    
}