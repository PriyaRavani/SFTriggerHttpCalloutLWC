@isTest

public class ContactTriggerHandlerTest {
    @isTest
    public static void AfterInsertHandlerTest(){
        List<Account> acc = new List<Account>();
        acc.add(new account(Name = 'ABC'));
        acc.add(new account(Name = 'XYZ'));
        
        insert acc;
        
        List<Contact> con = new List<Contact>();
        con.add(new contact(LastName = 'Test1', AccountId = acc[0].Id));
        con.add(new contact(LastName = 'Test2', AccountId = acc[1].Id));
        
        insert con;
        
        
    }
    @isTest
    public static void AfterUpdateHandlerTest(){
        List<Account> acc = new List<Account>();
        acc.add(new account(Name = 'ABC'));
        acc.add(new account(Name = 'XYZ'));
        
        insert acc;
        
        List<Contact> con = new List<contact>();
        con.add(new contact(LastName = 'Test1', AccountId = acc[0].Id));
        con.add(new contact(LastName = 'Test2', AccountId = acc[1].Id));
        
        insert con;
        
        con = [select id, lastName, accountId from Contact where accountId =:acc[0].Id];
        con[0].accountId = acc[1].Id;
        
        update con;
    }
    
    @isTest
    public static void AfterDeleteHandlerTest(){
        List<Account> acc = new List<Account>();
        acc.add(new account(Name = 'ABC'));
        acc.add(new account(Name = 'XYZ'));
        
        insert acc;
        
        List<Contact> con = new List<Contact>();
        con.add(new contact(LastName = 'Test1', AccountId = acc[0].Id));
        con.add(new contact(LastName = 'Test2', AccountId = acc[1].Id));
        
        insert con;
        
        Delete con[0];
        
        
    }
    
    @isTest
    public static void AfterUndeleteHandlerTest(){
        List<Account> acc = new List<Account>();
        acc.add(new account(Name = 'ABC'));
        acc.add(new account(Name = 'XYZ'));
        
        insert acc;
        
        List<Contact> con = new List<Contact>();
        con.add(new contact(LastName = 'Test1', AccountId = acc[0].Id));
        con.add(new contact(LastName = 'Test2', AccountId = acc[1].Id));
        
        insert con;
        
        Delete con[0];
        Undelete con[0];
        
    }
    
}