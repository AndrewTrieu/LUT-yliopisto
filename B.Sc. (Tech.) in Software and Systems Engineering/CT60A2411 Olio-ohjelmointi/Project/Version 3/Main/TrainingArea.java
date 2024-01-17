package Main;

import java.util.*;

public class TrainingArea {
    protected HashMap<Integer, Lutemon> training = new HashMap<Integer, Lutemon>();

    public TrainingArea() {

    }

    public void addLutemon(int id, Lutemon lutemon) {
        training.put(id, lutemon);
    }

    public void removeLutemon(int id) {
        training.remove(id);
    }

    public void train() {
        for (Lutemon lutemon : training.values()) {
            System.out.println(lutemon.getColor() + "(" + lutemon.getName() + ") trains and gain experience!");
            lutemon.train();
        }
    }

    public HashMap<Integer, Lutemon> getTraining() {
        return training;
    }
}
