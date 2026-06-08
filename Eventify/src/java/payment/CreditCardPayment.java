package payment;

public class CreditCardPayment implements Payment {
    @Override
    public boolean processPayment(double amount) {
        System.out.println("Proses pembayaran Credit Card: Rp" + amount);
        return true; // simulasi berhasil
    }

    @Override
    public String getPaymentMethod() { return "Credit Card"; }
}