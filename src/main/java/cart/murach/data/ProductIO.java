package cart.murach.data;

import cart.murach.business.Product;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;

public class ProductIO {

    public static Product getProduct(String code, String filepath) {
        Product product =null;
        try (BufferedReader in = new BufferedReader(new FileReader(filepath));) {
            String line = in.readLine();
            while (line != null) {
                StringTokenizer tokenizer = new StringTokenizer(line, "|");
                String productCode = tokenizer.nextToken();
                if (code.equalsIgnoreCase(productCode)) {
                    String description = tokenizer.nextToken();
                    double price = Double.parseDouble(tokenizer.nextToken());
                    product = new Product(code,description,price);;
                }
                line = in.readLine();
            }
        } catch (IOException e) {
            System.err.println(e);
        }
        return product;
    }

    public static ArrayList<Product> getProducts(String filepath) {
        ArrayList<Product> products = new ArrayList<>();
        File file = new File(filepath);
        try (BufferedReader in = new BufferedReader(new FileReader(file));){
            String line = in.readLine();
            while (line != null) {
                StringTokenizer t = new StringTokenizer(line, "|");
                String code = t.nextToken();
                String description = t.nextToken();
                String priceAsString = t.nextToken();
                double price = Double.parseDouble(priceAsString);
                Product p = new Product(code,description,price);
                products.add(p);
                line = in.readLine();
            }
            return products;
        } catch (IOException e) {
            System.err.println(e);
            return null;
        }
    }
}