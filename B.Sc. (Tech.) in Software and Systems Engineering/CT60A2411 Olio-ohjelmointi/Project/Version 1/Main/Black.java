package Main;

public class Black extends Lutemon {
    protected String name, color;
    protected int attack, defense, exp, health, maxHealth, id;

    public Black(String name, String color, int exp) {
        super(name, color, exp);
        this.attack = 9;
        this.defense = 0;
        this.maxHealth = 16;
        this.health = 16;
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
