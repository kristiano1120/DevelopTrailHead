@isTest
public class AccountTriggerTest {
    @testSetup
    static void makeData(){
        List<Account> ctas = new List<Account>();
        for(Integer i = 0; i < 200; i++){
            Account acct = new Account(
                Name='Test Account' + i,
                BillingState='CA');
            ctas.add(acct);
        }
        Insert ctas;
    }
    
    
    @isTest
    static void createAccountsTetst(){
        List<Account> ctas = [SELECT Id, Name FROM Account 
                              WHERE ShippingState = 'CA'];
        System.assertEquals(200, ctas.size());
    }
}