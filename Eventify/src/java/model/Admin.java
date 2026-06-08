package model;

public class Admin extends User {
    public Admin(int id, String name, String email, String password) {
        super(id, name, email, password);
    }

    @Override
    public String getRole() { return "ADMIN"; }

    public void createEvent(Event event) {
        System.out.println("Admin " + getName() + " membuat event: " + event.getName());
    }

    public void deleteEvent(int eventId) {
        System.out.println("Admin menghapus event ID: " + eventId);
    }
}