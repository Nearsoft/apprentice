public class Guitar {
    private String serialNumber, builder, model, type, 
                    backWood, topWood;
    private double price;
    
    public Guitar(String serialNumber, double price,
                    String builder, String model, String type,
                    String backWood, String topWood) {
        this.serialNumber = serialNumber;
        this.price = price;
        this.builder = builder;
        this.model = model;
        this.type = type;
        this.backWood = backWood;
        this.topWood = topWood;
    }
}
