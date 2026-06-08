package payment;

public class EWalletPayment implements Payment {
    @Override
    public boolean processPayment(double amount) {
        System.out.println("Proses pembayaran E-Wallet: Rp" + amount);
        return true;
    }

    @Override
    public String getPaymentMethod() { return "E-Wallet"; }
}