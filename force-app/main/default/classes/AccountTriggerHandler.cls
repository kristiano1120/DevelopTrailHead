public class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> cuentas){
        for(Account c : cuentas){
            if(c.ShippingState != c.BillingState){
                c.ShippingState = c.BillingState;
            }
        }
    }
}