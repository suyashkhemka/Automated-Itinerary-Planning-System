/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MODAL_PROJECT;
import MODAL_PROJECT.ConnectionClass;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import java.io.*;
import javax.servlet.*;  
import javax.servlet.http.*;  
/**
 *
 * @author Siddhart Bhadri
 */
public class FetchDetails {
    String demostring="AVCSCHAGDADKB";
public String id_day1_1[]= new String[100];
public String name_day1_1[]= new String[100];
public String days_day1_1[]= new String[100];
public String ot1_day1_1[]= new String[100];
public String ct1_day1_1[]= new String[100];
public String ot2_day1_1[]= new String[100];
public String ct2_day1_1[]= new String[100];
public String lati_day1_1[]= new String[100];
public String longi_day1_1[]= new String[100];
public String cost_day1_1[]= new String[100];
public String rating_day1_1[]= new String[100];
public String ts_day1_1[]= new String[100];

public String id_day1_2[]= new String[100];
public String name_day1_2[]= new String[100];
public String days_day1_2[]= new String[100];
public String ot1_day1_2[]= new String[100];
public String ct1_day1_2[]= new String[100];
public String ot2_day1_2[]= new String[100];
public String ct2_day1_2[]= new String[100];
public String lati_day1_2[]= new String[100];
public String longi_day1_2[]= new String[100];
public String cost_day1_2[]= new String[100];
public String rating_day1_2[]= new String[100];
public String ts_day1_2[]= new String[100];

public String id_day2_1[]= new String[100];
public String name_day2_1[]= new String[100];
public String days_day2_1[]= new String[100];
public String ot1_day2_1[]= new String[100];
public String ct1_day2_1[]= new String[100];
public String ot2_day2_1[]= new String[100];
public String ct2_day2_1[]= new String[100];
public String lati_day2_1[]= new String[100];
public String longi_day2_1[]= new String[100];
public String cost_day2_1[]= new String[100];
public String rating_day2_1[]= new String[100];
public String ts_day2_1[]= new String[100];

public String id_day2_2[]= new String[100];
public String name_day2_2[]= new String[100];
public String days_day2_2[]= new String[100];
public String ot1_day2_2[]= new String[100];
public String ct1_day2_2[]= new String[100];
public String ot2_day2_2[]= new String[100];
public String ct2_day2_2[]= new String[100];
public String lati_day2_2[]= new String[100];
public String longi_day2_2[]= new String[100];
public String cost_day2_2[]= new String[100];
public String rating_day2_2[]= new String[100];
public String ts_day2_2[]= new String[100];

public String id_day3_1[]= new String[100];
public String name_day3_1[]= new String[100];
public String days_day3_1[]= new String[100];
public String ot1_day3_1[]= new String[100];
public String ct1_day3_1[]= new String[100];
public String ot2_day3_1[]= new String[100];
public String ct2_day3_1[]= new String[100];
public String lati_day3_1[]= new String[100];
public String longi_day3_1[]= new String[100];
public String cost_day3_1[]= new String[100];
public String rating_day3_1[]= new String[100];
public String ts_day3_1[]= new String[100];

public String id_day3_2[]= new String[100];
public String name_day3_2[]= new String[100];
public String days_day3_2[]= new String[100];
public String ot1_day3_2[]= new String[100];
public String ct1_day3_2[]= new String[100];
public String ot2_day3_2[]= new String[100];
public String ct2_day3_2[]= new String[100];
public String lati_day3_2[]= new String[100];
public String longi_day3_2[]= new String[100];
public String cost_day3_2[]= new String[100];
public String rating_day3_2[]= new String[100];
public String ts_day3_2[]= new String[100];

public String id_day4_1[]= new String[100];
public String name_day4_1[]= new String[100];
public String days_day4_1[]= new String[100];
public String ot1_day4_1[]= new String[100];
public String ct1_day4_1[]= new String[100];
public String ot2_day4_1[]= new String[100];
public String ct2_day4_1[]= new String[100];
public String lati_day4_1[]= new String[100];
public String longi_day4_1[]= new String[100];
public String cost_day4_1[]= new String[100];
public String rating_day4_1[]= new String[100];
public String ts_day4_1[]= new String[100];

public String id_day4_2[]= new String[100];
public String name_day4_2[]= new String[100];
public String days_day4_2[]= new String[100];
public String ot1_day4_2[]= new String[100];
public String ct1_day4_2[]= new String[100];
public String ot2_day4_2[]= new String[100];
public String ct2_day4_2[]= new String[100];
public String lati_day4_2[]= new String[100];
public String longi_day4_2[]= new String[100];
public String cost_day4_2[]= new String[100];
public String rating_day4_2[]= new String[100];
public String ts_day4_2[]= new String[100];
ResultSet rs;
static int i1=0,j1=0,k1=0,l1=0;
static int i2=0,j2=0,k2=0,l2=0;

    public String getDemostring() {
        return demostring;
    }

    public String[] getId_day1_1() {
        return id_day1_1;
    }

    public String[] getName_day1_1() {
        return name_day1_1;
    }

    public String[] getDays_day1_1() {
        return days_day1_1;
    }

    public String[] getOt1_day1_1() {
        return ot1_day1_1;
    }

    public String[] getCt1_day1_1() {
        return ct1_day1_1;
    }

    public String[] getOt2_day1_1() {
        return ot2_day1_1;
    }

    public String[] getCt2_day1_1() {
        return ct2_day1_1;
    }

    public String[] getLati_day1_1() {
        return lati_day1_1;
    }

    public String[] getLongi_day1_1() {
        return longi_day1_1;
    }

    public String[] getCost_day1_1() {
        return cost_day1_1;
    }

    public String[] getRating_day1_1() {
        return rating_day1_1;
    }

    public String[] getTs_day1_1() {
        return ts_day1_1;
    }

    public String[] getId_day1_2() {
        return id_day1_2;
    }

    public String[] getName_day1_2() {
        return name_day1_2;
    }

    public String[] getDays_day1_2() {
        return days_day1_2;
    }

    public String[] getOt1_day1_2() {
        return ot1_day1_2;
    }

    public String[] getCt1_day1_2() {
        return ct1_day1_2;
    }

    public String[] getOt2_day1_2() {
        return ot2_day1_2;
    }

    public String[] getCt2_day1_2() {
        return ct2_day1_2;
    }

    public String[] getLati_day1_2() {
        return lati_day1_2;
    }

    public String[] getLongi_day1_2() {
        return longi_day1_2;
    }

    public String[] getCost_day1_2() {
        return cost_day1_2;
    }

    public String[] getRating_day1_2() {
        return rating_day1_2;
    }

    public String[] getTs_day1_2() {
        return ts_day1_2;
    }

    public String[] getId_day2_1() {
        return id_day2_1;
    }

    public String[] getName_day2_1() {
        return name_day2_1;
    }

    public String[] getDays_day2_1() {
        return days_day2_1;
    }

    public String[] getOt1_day2_1() {
        return ot1_day2_1;
    }

    public String[] getCt1_day2_1() {
        return ct1_day2_1;
    }

    public String[] getOt2_day2_1() {
        return ot2_day2_1;
    }

    public String[] getCt2_day2_1() {
        return ct2_day2_1;
    }

    public String[] getLati_day2_1() {
        return lati_day2_1;
    }

    public String[] getLongi_day2_1() {
        return longi_day2_1;
    }

    public String[] getCost_day2_1() {
        return cost_day2_1;
    }

    public String[] getRating_day2_1() {
        return rating_day2_1;
    }

    public String[] getTs_day2_1() {
        return ts_day2_1;
    }

    public String[] getId_day2_2() {
        return id_day2_2;
    }

    public String[] getName_day2_2() {
        return name_day2_2;
    }

    public String[] getDays_day2_2() {
        return days_day2_2;
    }

    public String[] getOt1_day2_2() {
        return ot1_day2_2;
    }

    public String[] getCt1_day2_2() {
        return ct1_day2_2;
    }

    public String[] getOt2_day2_2() {
        return ot2_day2_2;
    }

    public String[] getCt2_day2_2() {
        return ct2_day2_2;
    }

    public String[] getLati_day2_2() {
        return lati_day2_2;
    }

    public String[] getLongi_day2_2() {
        return longi_day2_2;
    }

    public String[] getCost_day2_2() {
        return cost_day2_2;
    }

    public String[] getRating_day2_2() {
        return rating_day2_2;
    }

    public String[] getTs_day2_2() {
        return ts_day2_2;
    }

    public String[] getId_day3_1() {
        return id_day3_1;
    }

    public String[] getName_day3_1() {
        return name_day3_1;
    }

    public String[] getDays_day3_1() {
        return days_day3_1;
    }

    public String[] getOt1_day3_1() {
        return ot1_day3_1;
    }

    public String[] getCt1_day3_1() {
        return ct1_day3_1;
    }

    public String[] getOt2_day3_1() {
        return ot2_day3_1;
    }

    public String[] getCt2_day3_1() {
        return ct2_day3_1;
    }

    public String[] getLati_day3_1() {
        return lati_day3_1;
    }

    public String[] getLongi_day3_1() {
        return longi_day3_1;
    }

    public String[] getCost_day3_1() {
        return cost_day3_1;
    }

    public String[] getRating_day3_1() {
        return rating_day3_1;
    }

    public String[] getTs_day3_1() {
        return ts_day3_1;
    }

    public String[] getId_day3_2() {
        return id_day3_2;
    }

    public String[] getName_day3_2() {
        return name_day3_2;
    }

    public String[] getDays_day3_2() {
        return days_day3_2;
    }

    public String[] getOt1_day3_2() {
        return ot1_day3_2;
    }

    public String[] getCt1_day3_2() {
        return ct1_day3_2;
    }

    public String[] getOt2_day3_2() {
        return ot2_day3_2;
    }

    public String[] getCt2_day3_2() {
        return ct2_day3_2;
    }

    public String[] getLati_day3_2() {
        return lati_day3_2;
    }

    public String[] getLongi_day3_2() {
        return longi_day3_2;
    }

    public String[] getCost_day3_2() {
        return cost_day3_2;
    }

    public String[] getRating_day3_2() {
        return rating_day3_2;
    }

    public String[] getTs_day3_2() {
        return ts_day3_2;
    }

    public String[] getId_day4_1() {
        return id_day4_1;
    }

    public String[] getName_day4_1() {
        return name_day4_1;
    }

    public String[] getDays_day4_1() {
        return days_day4_1;
    }

    public String[] getOt1_day4_1() {
        return ot1_day4_1;
    }

    public String[] getCt1_day4_1() {
        return ct1_day4_1;
    }

    public String[] getOt2_day4_1() {
        return ot2_day4_1;
    }

    public String[] getCt2_day4_1() {
        return ct2_day4_1;
    }

    public String[] getLati_day4_1() {
        return lati_day4_1;
    }

    public String[] getLongi_day4_1() {
        return longi_day4_1;
    }

    public String[] getCost_day4_1() {
        return cost_day4_1;
    }

    public String[] getRating_day4_1() {
        return rating_day4_1;
    }

    public String[] getTs_day4_1() {
        return ts_day4_1;
    }

    public String[] getId_day4_2() {
        return id_day4_2;
    }

    public String[] getName_day4_2() {
        return name_day4_2;
    }

    public String[] getDays_day4_2() {
        return days_day4_2;
    }

    public String[] getOt1_day4_2() {
        return ot1_day4_2;
    }

    public String[] getCt1_day4_2() {
        return ct1_day4_2;
    }

    public String[] getOt2_day4_2() {
        return ot2_day4_2;
    }

    public String[] getCt2_day4_2() {
        return ct2_day4_2;
    }

    public String[] getLati_day4_2() {
        return lati_day4_2;
    }

    public String[] getLongi_day4_2() {
        return longi_day4_2;
    }

    public String[] getCost_day4_2() {
        return cost_day4_2;
    }

    public String[] getRating_day4_2() {
        return rating_day4_2;
    }

    public String[] getTs_day4_2() {
        return ts_day4_2;
    }
    public int geti1()
    { return i1;
    }
     public int geti2()
    { return j1;
    }
    public ResultSet getRs() {
        return rs;
    }

    public int getI1() {
        return i1;
    }

    public int getJ1() {
        return j1;
    }

    public int getK1() {
        return k1;
    }

    public int getL1() {
        return l1;
    }

    public int getI2() {
        return i2;
    }

    public int getJ2() {
        return j2;
    }

    public int getK2() {
        return k2;
    }

    public int getL2() {
        return l2;
    }

    public void setDemostring(String demostring) {
        this.demostring = demostring;
    }

    public void setId_day1_1(String[] id_day1_1) {
        this.id_day1_1 = id_day1_1;
    }

    public void setName_day1_1(String[] name_day1_1) {
        this.name_day1_1 = name_day1_1;
    }

    public void setDays_day1_1(String[] days_day1_1) {
        this.days_day1_1 = days_day1_1;
    }

    public void setOt1_day1_1(String[] ot1_day1_1) {
        this.ot1_day1_1 = ot1_day1_1;
    }

    public void setCt1_day1_1(String[] ct1_day1_1) {
        this.ct1_day1_1 = ct1_day1_1;
    }

    public void setOt2_day1_1(String[] ot2_day1_1) {
        this.ot2_day1_1 = ot2_day1_1;
    }

    public void setCt2_day1_1(String[] ct2_day1_1) {
        this.ct2_day1_1 = ct2_day1_1;
    }

    public void setLati_day1_1(String[] lati_day1_1) {
        this.lati_day1_1 = lati_day1_1;
    }

    public void setLongi_day1_1(String[] longi_day1_1) {
        this.longi_day1_1 = longi_day1_1;
    }

    public void setCost_day1_1(String[] cost_day1_1) {
        this.cost_day1_1 = cost_day1_1;
    }

    public void setRating_day1_1(String[] rating_day1_1) {
        this.rating_day1_1 = rating_day1_1;
    }

    public void setTs_day1_1(String[] ts_day1_1) {
        this.ts_day1_1 = ts_day1_1;
    }

    public void setId_day1_2(String[] id_day1_2) {
        this.id_day1_2 = id_day1_2;
    }

    public void setName_day1_2(String[] name_day1_2) {
        this.name_day1_2 = name_day1_2;
    }

    public void setDays_day1_2(String[] days_day1_2) {
        this.days_day1_2 = days_day1_2;
    }

    public void setOt1_day1_2(String[] ot1_day1_2) {
        this.ot1_day1_2 = ot1_day1_2;
    }

    public void setCt1_day1_2(String[] ct1_day1_2) {
        this.ct1_day1_2 = ct1_day1_2;
    }

    public void setOt2_day1_2(String[] ot2_day1_2) {
        this.ot2_day1_2 = ot2_day1_2;
    }

    public void setCt2_day1_2(String[] ct2_day1_2) {
        this.ct2_day1_2 = ct2_day1_2;
    }

    public void setLati_day1_2(String[] lati_day1_2) {
        this.lati_day1_2 = lati_day1_2;
    }

    public void setLongi_day1_2(String[] longi_day1_2) {
        this.longi_day1_2 = longi_day1_2;
    }

    public void setCost_day1_2(String[] cost_day1_2) {
        this.cost_day1_2 = cost_day1_2;
    }

    public void setRating_day1_2(String[] rating_day1_2) {
        this.rating_day1_2 = rating_day1_2;
    }

    public void setTs_day1_2(String[] ts_day1_2) {
        this.ts_day1_2 = ts_day1_2;
    }

    public void setId_day2_1(String[] id_day2_1) {
        this.id_day2_1 = id_day2_1;
    }

    public void setName_day2_1(String[] name_day2_1) {
        this.name_day2_1 = name_day2_1;
    }

    public void setDays_day2_1(String[] days_day2_1) {
        this.days_day2_1 = days_day2_1;
    }

    public void setOt1_day2_1(String[] ot1_day2_1) {
        this.ot1_day2_1 = ot1_day2_1;
    }

    public void setCt1_day2_1(String[] ct1_day2_1) {
        this.ct1_day2_1 = ct1_day2_1;
    }

    public void setOt2_day2_1(String[] ot2_day2_1) {
        this.ot2_day2_1 = ot2_day2_1;
    }

    public void setCt2_day2_1(String[] ct2_day2_1) {
        this.ct2_day2_1 = ct2_day2_1;
    }

    public void setLati_day2_1(String[] lati_day2_1) {
        this.lati_day2_1 = lati_day2_1;
    }

    public void setLongi_day2_1(String[] longi_day2_1) {
        this.longi_day2_1 = longi_day2_1;
    }

    public void setCost_day2_1(String[] cost_day2_1) {
        this.cost_day2_1 = cost_day2_1;
    }

    public void setRating_day2_1(String[] rating_day2_1) {
        this.rating_day2_1 = rating_day2_1;
    }

    public void setTs_day2_1(String[] ts_day2_1) {
        this.ts_day2_1 = ts_day2_1;
    }

    public void setId_day2_2(String[] id_day2_2) {
        this.id_day2_2 = id_day2_2;
    }

    public void setName_day2_2(String[] name_day2_2) {
        this.name_day2_2 = name_day2_2;
    }

    public void setDays_day2_2(String[] days_day2_2) {
        this.days_day2_2 = days_day2_2;
    }

    public void setOt1_day2_2(String[] ot1_day2_2) {
        this.ot1_day2_2 = ot1_day2_2;
    }

    public void setCt1_day2_2(String[] ct1_day2_2) {
        this.ct1_day2_2 = ct1_day2_2;
    }

    public void setOt2_day2_2(String[] ot2_day2_2) {
        this.ot2_day2_2 = ot2_day2_2;
    }

    public void setCt2_day2_2(String[] ct2_day2_2) {
        this.ct2_day2_2 = ct2_day2_2;
    }

    public void setLati_day2_2(String[] lati_day2_2) {
        this.lati_day2_2 = lati_day2_2;
    }

    public void setLongi_day2_2(String[] longi_day2_2) {
        this.longi_day2_2 = longi_day2_2;
    }

    public void setCost_day2_2(String[] cost_day2_2) {
        this.cost_day2_2 = cost_day2_2;
    }

    public void setRating_day2_2(String[] rating_day2_2) {
        this.rating_day2_2 = rating_day2_2;
    }

    public void setTs_day2_2(String[] ts_day2_2) {
        this.ts_day2_2 = ts_day2_2;
    }

    public void setId_day3_1(String[] id_day3_1) {
        this.id_day3_1 = id_day3_1;
    }

    public void setName_day3_1(String[] name_day3_1) {
        this.name_day3_1 = name_day3_1;
    }

    public void setDays_day3_1(String[] days_day3_1) {
        this.days_day3_1 = days_day3_1;
    }

    public void setOt1_day3_1(String[] ot1_day3_1) {
        this.ot1_day3_1 = ot1_day3_1;
    }

    public void setCt1_day3_1(String[] ct1_day3_1) {
        this.ct1_day3_1 = ct1_day3_1;
    }

    public void setOt2_day3_1(String[] ot2_day3_1) {
        this.ot2_day3_1 = ot2_day3_1;
    }

    public void setCt2_day3_1(String[] ct2_day3_1) {
        this.ct2_day3_1 = ct2_day3_1;
    }

    public void setLati_day3_1(String[] lati_day3_1) {
        this.lati_day3_1 = lati_day3_1;
    }

    public void setLongi_day3_1(String[] longi_day3_1) {
        this.longi_day3_1 = longi_day3_1;
    }

    public void setCost_day3_1(String[] cost_day3_1) {
        this.cost_day3_1 = cost_day3_1;
    }

    public void setRating_day3_1(String[] rating_day3_1) {
        this.rating_day3_1 = rating_day3_1;
    }

    public void setTs_day3_1(String[] ts_day3_1) {
        this.ts_day3_1 = ts_day3_1;
    }

    public void setId_day3_2(String[] id_day3_2) {
        this.id_day3_2 = id_day3_2;
    }

    public void setName_day3_2(String[] name_day3_2) {
        this.name_day3_2 = name_day3_2;
    }

    public void setDays_day3_2(String[] days_day3_2) {
        this.days_day3_2 = days_day3_2;
    }

    public void setOt1_day3_2(String[] ot1_day3_2) {
        this.ot1_day3_2 = ot1_day3_2;
    }

    public void setCt1_day3_2(String[] ct1_day3_2) {
        this.ct1_day3_2 = ct1_day3_2;
    }

    public void setOt2_day3_2(String[] ot2_day3_2) {
        this.ot2_day3_2 = ot2_day3_2;
    }

    public void setCt2_day3_2(String[] ct2_day3_2) {
        this.ct2_day3_2 = ct2_day3_2;
    }

    public void setLati_day3_2(String[] lati_day3_2) {
        this.lati_day3_2 = lati_day3_2;
    }

    public void setLongi_day3_2(String[] longi_day3_2) {
        this.longi_day3_2 = longi_day3_2;
    }

    public void setCost_day3_2(String[] cost_day3_2) {
        this.cost_day3_2 = cost_day3_2;
    }

    public void setRating_day3_2(String[] rating_day3_2) {
        this.rating_day3_2 = rating_day3_2;
    }

    public void setTs_day3_2(String[] ts_day3_2) {
        this.ts_day3_2 = ts_day3_2;
    }

    public void setId_day4_1(String[] id_day4_1) {
        this.id_day4_1 = id_day4_1;
    }

    public void setName_day4_1(String[] name_day4_1) {
        this.name_day4_1 = name_day4_1;
    }

    public void setDays_day4_1(String[] days_day4_1) {
        this.days_day4_1 = days_day4_1;
    }

    public void setOt1_day4_1(String[] ot1_day4_1) {
        this.ot1_day4_1 = ot1_day4_1;
    }

    public void setCt1_day4_1(String[] ct1_day4_1) {
        this.ct1_day4_1 = ct1_day4_1;
    }

    public void setOt2_day4_1(String[] ot2_day4_1) {
        this.ot2_day4_1 = ot2_day4_1;
    }

    public void setCt2_day4_1(String[] ct2_day4_1) {
        this.ct2_day4_1 = ct2_day4_1;
    }

    public void setLati_day4_1(String[] lati_day4_1) {
        this.lati_day4_1 = lati_day4_1;
    }

    public void setLongi_day4_1(String[] longi_day4_1) {
        this.longi_day4_1 = longi_day4_1;
    }

    public void setCost_day4_1(String[] cost_day4_1) {
        this.cost_day4_1 = cost_day4_1;
    }

    public void setRating_day4_1(String[] rating_day4_1) {
        this.rating_day4_1 = rating_day4_1;
    }

    public void setTs_day4_1(String[] ts_day4_1) {
        this.ts_day4_1 = ts_day4_1;
    }

    public void setId_day4_2(String[] id_day4_2) {
        this.id_day4_2 = id_day4_2;
    }

    public void setName_day4_2(String[] name_day4_2) {
        this.name_day4_2 = name_day4_2;
    }

    public void setDays_day4_2(String[] days_day4_2) {
        this.days_day4_2 = days_day4_2;
    }

    public void setOt1_day4_2(String[] ot1_day4_2) {
        this.ot1_day4_2 = ot1_day4_2;
    }

    public void setCt1_day4_2(String[] ct1_day4_2) {
        this.ct1_day4_2 = ct1_day4_2;
    }

    public void setOt2_day4_2(String[] ot2_day4_2) {
        this.ot2_day4_2 = ot2_day4_2;
    }

    public void setCt2_day4_2(String[] ct2_day4_2) {
        this.ct2_day4_2 = ct2_day4_2;
    }

    public void setLati_day4_2(String[] lati_day4_2) {
        this.lati_day4_2 = lati_day4_2;
    }

    public void setLongi_day4_2(String[] longi_day4_2) {
        this.longi_day4_2 = longi_day4_2;
    }

    public void setCost_day4_2(String[] cost_day4_2) {
        this.cost_day4_2 = cost_day4_2;
    }

    public void setRating_day4_2(String[] rating_day4_2) {
        this.rating_day4_2 = rating_day4_2;
    }

    public void setTs_day4_2(String[] ts_day4_2) {
        this.ts_day4_2 = ts_day4_2;
    }

    public void setRs(ResultSet rs) {
        this.rs = rs;
    }

    public void setI1(int i1) {
        this.i1 = i1;
    }

    public void setJ1(int j1) {
        this.j1 = j1;
    }

    public void setK1(int k1) {
        this.k1 = k1;
    }

    public void setL1(int l1) {
        this.l1 = l1;
    }

    public void setI2(int i2) {
        this.i2 = i2;
    }

    public void setJ2(int j2) {
        this.j2 = j2;
    }

    public void setK2(int k2) {
        this.k2 = k2;
    }

    public void setL2(int l2) {
        this.l2 = l2;
    }

public String demo()
{   
    ArrayList list = new ArrayList();
        ConnectionClass cc=new ConnectionClass();
        System.out.println("here");
        cc.createConnection();
        rs=null;
        try
        {
             rs=cc.stmt.executeQuery("select name from place where id="+1+";");
            
        if(rs.next())
        {
                 
                   
             demostring=rs.getString(1);
        }

 
        cc.con.close();
        }
        catch(Exception e4)
        {
                    System.out.print(e4.getMessage());
        }
        
        return demostring;
}
public void day1_1(int type, int type2)
{   
    ArrayList list = new ArrayList();
        ConnectionClass cc=new ConnectionClass();
        System.out.println("here");
        cc.createConnection();
        rs=null;
        try
        {
             rs=cc.stmt.executeQuery("select * from place where type='"+type+"' and type2='"+type2+"'  ");
            
        while(rs.next())
        {
            id_day1_1[i1]=rs.getString(1);
            name_day1_1[i1]=rs.getString(2);
            days_day1_1[i1]=rs.getString(5);
            ot1_day1_1[i1]=rs.getString(6);
            ct1_day1_1[i1]=rs.getString(7);
            ot2_day1_1[i1]=rs.getString(8);
            ct2_day1_1[i1]=rs.getString(9);
            lati_day1_1[i1]=rs.getString(10);
            longi_day1_1[i1]=rs.getString(11);
            cost_day1_1[i1]=rs.getString(12);
            rating_day1_1[i1]=rs.getString(13);
            ts_day1_1[i1]=rs.getString(14);            
            
           

            i1=i1+1;
            
                   

        }

 
        cc.con.close();
        }
        catch(Exception e4)
        {
                    System.out.print(e4.getMessage());
        }
        
        
}
public void day1_2(int type, int type2)
{   
    ArrayList list = new ArrayList();
        ConnectionClass cc=new ConnectionClass();
        System.out.println("here");
        cc.createConnection();
        rs=null;
        try
        {
             rs=cc.stmt.executeQuery("select id from place where type='"+type+"' and type2='"+type2+"'  ");
            
        while(rs.next())
        {
            id_day1_2[i2]=rs.getString(1);
            name_day1_2[i2]=rs.getString(2);
            days_day1_2[i2]=rs.getString(5);
            ot1_day1_2[i2]=rs.getString(6);
            ct1_day1_2[i2]=rs.getString(7);
            ot2_day1_2[i2]=rs.getString(8);
            ct2_day1_2[i2]=rs.getString(9);
            lati_day1_2[i2]=rs.getString(10);
            longi_day1_2[i2]=rs.getString(11);
            cost_day1_2[i2]=rs.getString(12);
            rating_day1_2[i2]=rs.getString(13);
            ts_day1_2[i2]=rs.getString(14);

            i2++;
            
                   

        }

 
        cc.con.close();
        }
        catch(Exception e4)
        {
                    System.out.print(e4.getMessage());
        }
        
        
}
public void day2_1(int type, int type2)
{   
    ArrayList list = new ArrayList();
        ConnectionClass cc=new ConnectionClass();
        System.out.println("here");
        cc.createConnection();
        rs=null;
        try
        {
             rs=cc.stmt.executeQuery("select * from place where type='"+type+"' and type2='"+type2+"'  ");
            
        while(rs.next())
        {
            id_day2_1[j1]=rs.getString(1);
            name_day2_1[j1]=rs.getString(2);
            days_day2_1[j1]=rs.getString(5);
            ot1_day2_1[j1]=rs.getString(6);
            ct1_day2_1[j1]=rs.getString(7);
            ot2_day2_1[j1]=rs.getString(8);
            ct2_day2_1[j1]=rs.getString(9);
            lati_day2_1[j1]=rs.getString(10);
            longi_day2_1[j1]=rs.getString(11);
            cost_day2_1[j1]=rs.getString(12);
            rating_day2_1[j1]=rs.getString(13);
            ts_day2_1[j1]=rs.getString(14);

           j1++;
            
                   

        }

 
        cc.con.close();
        }
        catch(Exception e4)
        {
                    System.out.print(e4.getMessage());
        }
        
        
}
public void day2_2(int type, int type2)
{   
    ArrayList list = new ArrayList();
        ConnectionClass cc=new ConnectionClass();
        System.out.println("here");
        cc.createConnection();
        rs=null;
        try
        {
             rs=cc.stmt.executeQuery("select id from place where type='"+type+"' and type2='"+type2+"'  ");
            
        while(rs.next())
        {
            id_day2_2[j2]=rs.getString(1);
            name_day2_2[j2]=rs.getString(2);
            days_day2_2[j2]=rs.getString(5);
            ot1_day2_2[j2]=rs.getString(6);
            ct1_day2_2[j2]=rs.getString(7);
            ot2_day2_2[j2]=rs.getString(8);
            ct2_day2_2[j2]=rs.getString(9);
            lati_day2_2[j2]=rs.getString(10);
            longi_day2_2[j2]=rs.getString(11);
            cost_day2_2[j2]=rs.getString(12);
            rating_day2_2[j2]=rs.getString(13);
            ts_day2_2[j2]=rs.getString(14);

            j2++;
            
                   

        }

 
        cc.con.close();
        }
        catch(Exception e4)
        {
                    System.out.print(e4.getMessage());
        }
        
        
}
public void day3_1(int type, int type2)
{   
    ArrayList list = new ArrayList();
        ConnectionClass cc=new ConnectionClass();
        System.out.println("here");
        cc.createConnection();
        rs=null;
        try
        {
             rs=cc.stmt.executeQuery("select * from place where type='"+type+"' and type2='"+type2+"'  ");
            
        while(rs.next())
        {
            id_day3_1[k1]=rs.getString(1);
            name_day3_1[k1]=rs.getString(2);
            days_day3_1[k1]=rs.getString(5);
            ot1_day3_1[k1]=rs.getString(6);
            ct1_day3_1[k1]=rs.getString(7);
            ot2_day3_1[k1]=rs.getString(8);
            ct2_day3_1[k1]=rs.getString(9);
            lati_day3_1[k1]=rs.getString(10);
            longi_day3_1[k1]=rs.getString(11);
            cost_day3_1[k1]=rs.getString(12);
            rating_day3_1[k1]=rs.getString(13);
            ts_day3_1[k1]=rs.getString(14);

            k1++;
            
                   

        }

 
        cc.con.close();
        }
        catch(Exception e4)
        {
                    System.out.print(e4.getMessage());
        }
        
        
}
public void day3_2(int type, int type2)
{   
    ArrayList list = new ArrayList();
        ConnectionClass cc=new ConnectionClass();
        System.out.println("here");
        cc.createConnection();
        rs=null;
        try
        {
             rs=cc.stmt.executeQuery("select id from place where type='"+type+"' and type2='"+type2+"'  ");
            
        while(rs.next())
        {
            id_day3_2[k2]=rs.getString(1);
            name_day3_2[k2]=rs.getString(2);
            days_day3_2[k2]=rs.getString(5);
            ot1_day3_2[k2]=rs.getString(6);
            ct1_day3_2[k2]=rs.getString(7);
            ot2_day3_2[k2]=rs.getString(8);
            ct2_day3_2[k2]=rs.getString(9);
            lati_day3_2[k2]=rs.getString(10);
            longi_day3_2[k2]=rs.getString(11);
            cost_day3_2[k2]=rs.getString(12);
            rating_day3_2[k2]=rs.getString(13);
            ts_day3_2[k2]=rs.getString(14);

            k2++;
            
                   

        }

 
        cc.con.close();
        }
        catch(Exception e4)
        {
                    System.out.print(e4.getMessage());
        }
        
        
}
public void day4_1(int type, int type2)
{   
    ArrayList list = new ArrayList();
        ConnectionClass cc=new ConnectionClass();
        System.out.println("here");
        cc.createConnection();
        rs=null;
        try
        {
             rs=cc.stmt.executeQuery("select * from place where type='"+type+"' and type2='"+type2+"'  ");
            
        while(rs.next())
        {
            id_day4_1[l1]=rs.getString(1);
            name_day4_1[l1]=rs.getString(2);
            days_day4_1[l1]=rs.getString(5);
            ot1_day4_1[l1]=rs.getString(6);
            ct1_day4_1[l1]=rs.getString(7);
            ot2_day4_1[l1]=rs.getString(8);
            ct2_day4_1[l1]=rs.getString(9);
            lati_day4_1[l1]=rs.getString(10);
            longi_day4_1[l1]=rs.getString(11);
            cost_day4_1[l1]=rs.getString(12);
            rating_day4_1[l1]=rs.getString(13);
            ts_day4_1[l1]=rs.getString(14);

            l1++;
            
                   

        }

 
        cc.con.close();
        }
        catch(Exception e4)
        {
                    System.out.print(e4.getMessage());
        }
        
        
}
public void day4_2(int type, int type2)
{   
    ArrayList list = new ArrayList();
        ConnectionClass cc=new ConnectionClass();
        System.out.println("here");
        cc.createConnection();
        rs=null;
        try
        {
             rs=cc.stmt.executeQuery("select id from place where type='"+type+"' and type2='"+type2+"'  ");
            
        while(rs.next())
        {
            id_day4_2[l2]=rs.getString(1);
            name_day4_2[l2]=rs.getString(2);
            days_day4_2[l2]=rs.getString(5);
            ot1_day4_2[l2]=rs.getString(6);
            ct1_day4_2[l2]=rs.getString(7);
            ot2_day4_2[l2]=rs.getString(8);
            ct2_day4_2[l2]=rs.getString(9);
            lati_day4_2[l2]=rs.getString(10);
            longi_day4_2[l2]=rs.getString(11);
            cost_day4_2[l2]=rs.getString(12);
            rating_day4_2[l2]=rs.getString(13);
            ts_day4_2[l2]=rs.getString(14);

            l2++;
            
                   

        }

 
        cc.con.close();
        }
        catch(Exception e4)
        {
                    System.out.print(e4.getMessage());
        }
        
        
}
}
