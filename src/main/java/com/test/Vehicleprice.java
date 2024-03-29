package com.test;



public class Vehicleprice {
    private String vno;
    private int price;
    private String type;
    private int maxkm;

    public Vehicleprice(String vno, int price, String type, int maxkm) {
        this.vno = vno;
        this.price = price;
        this.type = type;
        this.maxkm = maxkm;
    }

    public String getVno() {
        return vno;
    }

    public void setVno(String vno) {
        this.vno = vno;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getMaxkm() {
        return maxkm;
    }

    public void setMaxkm(int maxkm) {
        this.maxkm = maxkm;
    }

   // @Override
  /*  public String toString() {
        return "VehiclePrice{" +
                "vno='" + vno + '\'' +
                ", price=" + price +
                ", type='" + type + '\'' +
                ", maxkm=" + maxkm +
                '}';*/
    }
//}   