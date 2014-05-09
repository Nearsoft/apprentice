import java.util.*;

public class Inventory {
    private List guitars;
    
    public Inventory() {
        this.guitars = new LinkedList();
    }
    
    public void addGuitar(Guitar guitar) {
        guitars.add(guitar);
    }
    
    public int getLength() {
        return guitars.size();
    }
}
