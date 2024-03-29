package com.test;



import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.test.DBConnect;

public class VehiclePriceDBUtil {

    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    // Constructor
    public VehiclePriceDBUtil(Connection con) {
        this.con = con;
    }
    public static boolean updateVehiclePrice(String vno, int price, String type, int maxkm) {
        boolean isSuccess = false;

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();

            String sql = "UPDATE vehicleprices SET price = " + price + ", type = '" + type + "', maxkm = " + maxkm + " WHERE vno = '" + vno + "'";
            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    public static boolean deleteVehiclePrice(String vno) {
        boolean isSuccess = false;

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();

            String sql = "DELETE FROM vehicleprices WHERE vno = '" + vno + "'";
            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    public static Vehicleprice getSingleVehiclePrice(String vno) {
        Vehicleprice vehiclePrice = null;

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();

            String sql = "SELECT * FROM vehicleprices WHERE vno = '" + vno + "'";
            rs = stmt.executeQuery(sql);

            if (rs.next()) {
                int price = rs.getInt("price");
                String type = rs.getString("type");
                int maxkm = rs.getInt("maxkm");

                vehiclePrice = new Vehicleprice(vno, price, type, maxkm);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return vehiclePrice;
    }

    public static List<Vehicleprice> getAllVehiclePrices() {
        ArrayList<Vehicleprice> vehiclePrices = new ArrayList<>();

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();

            String sql = "SELECT * FROM vehicleprices";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                String vno = rs.getString("vno");
                int price = rs.getInt("price");
                String type = rs.getString("type");
                int maxkm = rs.getInt("maxkm");

                Vehicleprice vehiclePrice = new Vehicleprice(vno, price, type, maxkm);

                vehiclePrices.add(vehiclePrice);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return vehiclePrices;
    }

    public static boolean insertVehiclePrice(String vno, int price, String type, int maxkm) {
        boolean isSuccess = false;

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();

            String sql = "INSERT INTO vehicleprices (vno, price, type, maxkm) VALUES ('" + vno + "', " + price + ", '" + type + "', " + maxkm + ")";
            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    
}  