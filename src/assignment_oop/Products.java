/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package assignment_oop;

/**
 *
 * @author AKASH
 */
public class Products {
    int barcode;

    public void setBarcode(int barcode) {
        this.barcode = barcode;
    }

    public int getBarcode() {
        return barcode;
    }
    
    String descr;

    public void setDescr(String descr) {
        this.descr = descr;
    }

    public String getDescr() {
        return descr;
    }
    Double price;

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getPrice() {
        return price;
    }
    int quantity;

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Products(int barcode, String descr, Double price, int quantity) {
        this.barcode = barcode;
        this.descr = descr;
        this.price = price;
        this.quantity = quantity;
    }
    
    
}
