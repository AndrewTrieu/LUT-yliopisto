public class Stock {
    String symbol, name;
    double previousClosingPrice, currentPrice;

    public Stock(String symbol, String name, double previousClosingPrice) {
        this.symbol = symbol;
        this.name = name;
        this.previousClosingPrice = previousClosingPrice;
    }

    public String getSymbol() {
        return symbol;
    }

    public String getName() {
        return name;
    }

    public double getPreviousClosingPrice() {
        return previousClosingPrice;
    }

    public double getCurrentPrice() {
        return currentPrice;
    }

    public void setPreviousClosingPrice(double previousClosingPrice) {
        this.previousClosingPrice = previousClosingPrice;
    }

    public void setCurrentPrice(double currentPrice) {
        this.currentPrice = currentPrice;
    }

    public double changePercent(double currentPrice, double previousClosingPrice) {
        double change = currentPrice - previousClosingPrice;
        return change;
    }

    public static void main(String[] args) {
        Stock stock = new Stock("SUNW", "Sun Microsystems Inc", 100.0);
        stock.setCurrentPrice(90);
        System.out.println((int) stock.changePercent(stock.getCurrentPrice(), stock.getPreviousClosingPrice()));
    }
}
