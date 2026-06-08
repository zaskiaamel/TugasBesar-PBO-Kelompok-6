package model;
import java.util.Date;
import java.util.ArrayList;

public class Event {
    private int eventId;
    private String name;
    private String description;
    private Date date;
    private String location;
    private int capacity;
    private ArrayList<Ticket> tickets = new ArrayList<>(); // Aggregation

    public Event(int eventId, String name, String description, Date date, String location, int capacity) {
        this.eventId = eventId;
        this.name = name;
        this.description = description;
        this.date = date;
        this.location = location;
        this.capacity = capacity;
    }

    public boolean isAvailable() {
        return tickets.size() < capacity;
    }

    // Getter
    public int getEventId() { return eventId; }
    public String getName() { return name; }
    public String getDescription() { return description; }
    public Date getDate() { return date; }
    public String getLocation() { return location; }
    public int getCapacity() { return capacity; }
    public int getBookedCount() { return tickets.size(); }
    public void addTicket(Ticket t) { tickets.add(t); }
}