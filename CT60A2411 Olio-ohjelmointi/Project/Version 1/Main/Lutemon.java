package Main;

public class Lutemon {
    protected String name, color;
    protected int id, exp;
    private static int idCounter = 0;

    public Lutemon(String name, String color, int exp) {
        this.name = name;
        this.color = color;
        this.exp = 0;
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

    public void train() {
        this.exp++;
    }

    public String printStats() {
        if (this instanceof White) {
            return (this.getId() + ": " + this.getColor() + "(" + this.getName() + ") " + "att: "
                    + ((White) this).getAttack() + "; def: " + ((White) this).getDefense() + "; exp:"
                    + this.getExp() + "; health: " + ((White) this).getHealth() + "/"
                    + ((White) this).getMaxHealth());
        } else if (this instanceof Green) {
            return (this.getId() + ": " + this.getColor() + "(" + this.getName() + ") " + "att: "
                    + ((Green) this).getAttack() + "; def: " + ((Green) this).getDefense() + "; exp:"
                    + this.getExp() + "; health: " + ((Green) this).getHealth() + "/"
                    + ((Green) this).getMaxHealth());
        } else if (this instanceof Pink) {
            return (this.getId() + ": " + this.getColor() + "(" + this.getName() + ") " + "att: "
                    + ((Pink) this).getAttack() + "; def: " + ((Pink) this).getDefense() + "; exp:"
                    + this.getExp() + "; health: " + ((Pink) this).getHealth() + "/"
                    + ((Pink) this).getMaxHealth());
        } else if (this instanceof Orange) {
            return (this.getId() + ": " + this.getColor() + "(" + this.getName() + ") " + "att: "
                    + ((Orange) this).getAttack() + "; def: " + ((Orange) this).getDefense() + "; exp:"
                    + this.getExp() + "; health: " + ((Orange) this).getHealth() + "/"
                    + ((Orange) this).getMaxHealth());
        } else if (this instanceof Black) {
            return (this.getId() + ": " + this.getColor() + "(" + this.getName() + ") " + "att: "
                    + ((Black) this).getAttack() + "; def: " + ((Black) this).getDefense() + "; exp:"
                    + this.getExp() + "; health: " + ((Black) this).getHealth() + "/"
                    + ((Black) this).getMaxHealth());
        }
        return "";
    }

    public static int getIdCounter() {
        return idCounter;
    }

    public int attack() {
        if (this instanceof White) {
            return ((White) this).getAttack() + this.getExp();
        } else if (this instanceof Green) {
            return ((Green) this).getAttack() + this.getExp();
        } else if (this instanceof Pink) {
            return ((Pink) this).getAttack() + this.getExp();
        } else if (this instanceof Orange) {
            return ((Orange) this).getAttack() + this.getExp();
        } else if (this instanceof Black) {
            return ((Black) this).getAttack() + this.getExp();
        }
        return 0;
    }

    public void defense(int attack) {
        if (this instanceof White) {
            ((White) this).health -= attack - ((White) this).defense;
        } else if (this instanceof Green) {
            ((Green) this).health -= attack - ((Green) this).defense;
        } else if (this instanceof Pink) {
            ((Pink) this).health -= attack - ((Pink) this).defense;
        } else if (this instanceof Orange) {
            ((Orange) this).health -= attack - ((Orange) this).defense;
        } else if (this instanceof Black) {
            ((Black) this).health -= attack - ((Black) this).defense;
        }
    }

    public boolean checkAlive() {
        if (this instanceof White) {
            if (((White) this).health > 0) {
                return true;
            } else {
                return false;
            }
        } else if (this instanceof Green) {
            if (((Green) this).health > 0) {
                return true;
            } else {
                return false;
            }
        } else if (this instanceof Pink) {
            if (((Pink) this).health > 0) {
                return true;
            } else {
                return false;
            }
        } else if (this instanceof Orange) {
            if (((Orange) this).health > 0) {
                return true;
            } else {
                return false;
            }
        } else if (this instanceof Black) {
            if (((Black) this).health > 0) {
                return true;
            } else {
                return false;
            }
        }
        return false;
    }
}
