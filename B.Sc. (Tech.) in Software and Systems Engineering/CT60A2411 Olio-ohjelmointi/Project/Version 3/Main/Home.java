package Main;

import java.util.*;

public class Home {
    protected HashMap<Integer, Lutemon> home = new HashMap<Integer, Lutemon>();

    public Home() {

    }

    public void addLutemon(int id, Lutemon lutemon) {
        home.put(id, lutemon);
        heal(lutemon);
    }

    public void removeLutemon(int id) {
        home.remove(id);
    }

    public void heal(Lutemon lutemon) {
        lutemon.heal();
    }

    public HashMap<Integer, Lutemon> getHome() {
        return home;
    }
}
