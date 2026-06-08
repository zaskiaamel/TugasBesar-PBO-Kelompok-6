package model;

public abstract class User {
    private int id;
    private String name;
    private String email;
    private String password;

    public User(int id, String name, String email, String password) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
    }

    // Encapsulation: getter & setter
    public int getId() { return id; }
    public String getName() { return name; }
    public String getEmail() { return email; }
    public String getPassword() { return password; }
    public void setName(String name) { this.name = name; }

    public abstract String getRole();
}
