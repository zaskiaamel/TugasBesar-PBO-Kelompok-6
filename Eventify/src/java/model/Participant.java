package model;

import payment.Payment;

public class Participant extends User {
    public Participant(int id, String name, String email, String password) {
        super(id, name, email, password);
    }

    @Override
    public String getRole() { return "PARTICIPANT"; }

    public void viewEvent() {
        System.out.println("Participant " + getName() + " melihat daftar event");
    }

    public void bookTicket(Event event, Payment payment) {
        System.out.println("Booking tiket untuk: " + event.getName());
    }
}