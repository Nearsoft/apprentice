import static org.junit.Assert.*;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class InventoryTests
{
    /**
     * Default constructor for test class InventoryTests
     */
    public InventoryTests()
    {
    }
    
    @Test
    public void ItShouldAddGuitarToInventory() {
        //Arrange
        
        Inventory inventory = new Inventory();
        Guitar guitar = new Guitar("V95693",
            1499.95, "Fender", "Stratocastor",
            "electric", "Alder", "Alder");
        //Act
        inventory.addGuitar(guitar);
        
        //Assert
        //AssertEquals(expected, actual)
        assertEquals(1, inventory.getLength());
    }
    
    @Test
    public void ItShouldGetAGuitar() {
        Inventory inventory = new Inventory();
        Guitar guitar = new Guitar("V95693",
            1499.95, "Fender", "Stratocastor",
            "electric", "Alder", "Alder");
        inventory.addGuitar(guitar);
        
        //AssertEquals(expected, actual)
        //Implement this
        assertEquals(guitar, inventory.getGuitar("V95693"));
    }
    
    @Test
    public void ItShouldSearchAGuitar() {
        Inventory inventory = new Inventory();
        Guitar guitar = new Guitar("V95693",
            1499.95, "Fender", "Stratocastor",
            "electric", "Alder", "Alder");
        inventory.addGuitar(guitar);
        
        //AssertEquals(expected, actual)
        //Implement this
        assertEquals(guitar, inventory.search(guitar));
    }
    
 
}
