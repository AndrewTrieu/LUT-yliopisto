package Main;

public class Green extends Lutemon {
    protected String name, color;
    protected int attack, defense, exp, health, maxHealth, id;

    public Green(String name, String color, int exp) {
        super(name, color, exp);
        this.attack = 6;
        this.defense = 3;
        this.maxHealth = 19;
        this.health = 19;
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
