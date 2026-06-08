package model;

public class Ticket {
    private int ticketId;
    private String status;
    private Event event;

    public Ticket(int ticketId, Event event) {
        this.ticketId = ticketId;
        this.event = event;
        this.status = "PENDING";
    }

    public void generateTicket() {
        this.status = "CONFIRMED";
        System.out.println("Tiket #" + ticketId + " dikonfirmasi untuk " + event.getName());
    }

    public boolean checkAvailability() {
        return event.isAvailable();
    }

    public int getTicketId() { return ticketId; }
    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
}