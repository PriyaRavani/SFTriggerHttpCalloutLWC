public with sharing class TestController {
    public TestController() {
        
    }
    @AuraEnabled(cacheable=true)
    public static List<Account> LatestAccList(){
        Return [select Id, Name from account order by createdDate desc limit 10];
    }
}