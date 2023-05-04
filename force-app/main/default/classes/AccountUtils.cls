public class AccountUtils {
    
    Public static List<Account> accountsByState(String estado){
        List<Account> cuentas = [Select Id, Name FROM Account 
                                 WHERE BillingState = : estado];
        return cuentas;
    }

}