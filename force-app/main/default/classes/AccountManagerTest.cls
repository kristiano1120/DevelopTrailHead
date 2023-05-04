@IsTest
public class AccountManagerTest {
	@isTest static void testGetContactsByAccountID() {
        Id recordId = createTestRecord();
        
        RestRequest request = new RestRequest();
        request.requestUri =
            'https://yourInstance.my.salesforce.com/services/apexrest/Accounts/'
            + recordId + '/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        // Call the method to test
        Account thisAccount = AccountManager.getAccount();
        // Verify results
        System.assert(thisAccount != null);
        System.assertEquals('Test record', thisAccount.Name);
    }
    
    // Helper method
    static Id createTestRecord() {
        // Create test record
        Account AccountTest = new Account(
            Name='Test record');
        insert AccountTest;
        Contact contacto = new Contact(lastName = 'lucas', firstName = 'Juan', accountId = AccountTest.Id);
        insert contacto;
        return AccountTest.Id;
    }     
}