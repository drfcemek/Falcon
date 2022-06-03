public class CryptoInfo {
    public static Decimal showPrice(string coinName){

       map<string, Decimal> CryptoMap = new map<string, Decimal>();

        decimal coinPrice;
        CryptoMap.put('BTC',35.000);
        CryptoMap.put('ETH',2.500);

        coinPrice = CryptoMap.get(coinName);
    
        return coinPrice;
    }   

}
