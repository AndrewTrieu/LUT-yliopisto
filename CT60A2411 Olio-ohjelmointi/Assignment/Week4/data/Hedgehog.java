package data;

public class Hedgehog {
    static String name;

    public Hedgehog(String givename) {
        name = givename;
    }

    public String speak() {
        return "Hi, my name is " + name + ".";
    }

    public String speakInt(Integer i) {
        return name + ": I am a hedgehog. I do not understand numbers.";
    }

    public String speakString(String s) {
        return name + ": " + s;
    }
}
