package Main;

public class Lutemon {
    protected String name, color;
    protected int id, exp, attack, defense, health, maxHealth;
    private static int idCounter = 0;

    public Lutemon(String name, String color, int exp, int attack, int defense, int health) {
        this.name = name;
        this.color = color;
        this.exp = 0;
        this.attack = attack;
        this.defense = defense;
        this.health = health;
        this.maxHealth = health;
        this.id = idCounter;
        idCounter++;
    }

    public String getName() {
        return name;
    }

    public String getColor() {
        return color;
    }

    public int getId() {
        return id;
    }

    public int getExp() {
        return exp;
    }

    public int getAttack() {
        return attack;
    }

    public int getDefense() {
        return defense;
    }

    public int getMaxHealth() {
        return maxHealth;
    }

    public int getHealth() {
        return health;
    }

    public void heal() {
        this.health = this.maxHealth;
    }

    public void train() {
        this.exp++;
    }

    public String printStats() {
        return (getId() + ": " + getColor() + "(" + getName() + ") " + "att: "
                + getAttack() + "; def: " + getDefense() + "; exp:"
                + getExp() + "; health: " + getHealth() + "/"
                + getMaxHealth());

    }

    public static int getIdCounter() {
        return idCounter;
    }

    public int attack() {
        return getAttack() + getExp();
    }

    public void defense(int attack) {
        this.health -= attack - this.defense;

    }

    public boolean checkAlive() {
        if (this.health > 0) {
            return true;
        } else {
            return false;
        }
    }
}
