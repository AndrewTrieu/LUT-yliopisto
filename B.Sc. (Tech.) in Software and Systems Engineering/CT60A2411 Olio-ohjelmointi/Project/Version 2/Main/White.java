package Main;

public class White extends Lutemon {
    protected String name, color;
    protected int attack, defense, exp, health, maxHealth, id;

    public White(String name, String color, int exp) {
        super(name, color, exp);
        this.attack = 5;
        this.defense = 4;
        this.maxHealth = 20;
        this.health = 20;
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

}
