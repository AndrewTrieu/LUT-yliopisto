package Main;

public class Hedgehog extends Animal {

    int spikes;

    public Hedgehog(String name, String spec, int age, int spikes) {
        super(name, spec, age);
        this.spikes = spikes;
    }

    public int getSpikes() {
        return this.spikes;
    }
}
