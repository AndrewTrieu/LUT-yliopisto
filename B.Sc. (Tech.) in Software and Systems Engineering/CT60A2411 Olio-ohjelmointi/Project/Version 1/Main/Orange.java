package Main;

public class Orange extends Lutemon {
    protected String name, color;
    protected int attack, defense, exp, health, maxHealth, id;

    public Orange(String name, String color, int exp) {
        super(name, color, exp);
        this.attack = 8;
        this.defense = 1;
        this.maxHealth = 17;
        this.health = 17;
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
