/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODAL_PROJECT;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import java.io.*;
import javax.servlet.*;  
import javax.servlet.http.*;  

/**
 *
 * @author Suyash
 */
public class Bean {
    String faculty_id;
    String faculty_password;
    String faculty_name;
    int faculty_level;
    String faculty_email;
    int faculty_dateofjoining;

    String subject_code;
    String subject_name;
    int subject_type;
    int subject_stream;
    int subject_sem;
    int subject_credits;
    int subject_hours;
    
    int id;
    

    public String getFaculty_id() {
        return faculty_id;
    }

    public String getFaculty_password() {
        return faculty_password;
    }

    public String getFaculty_name() {
        return faculty_name;
    }

    public int getFaculty_level() {
        return faculty_level;
    }

    public String getFaculty_email() {
        return faculty_email;
    }

    public int getFaculty_dateofjoining() {
        return faculty_dateofjoining;
    }

    public void setFaculty_id(String faculty_id) {
        this.faculty_id = faculty_id;
    }

    public void setFaculty_password(String faculty_password) {
        this.faculty_password = faculty_password;
    }

    public void setFaculty_name(String faculty_name) {
        this.faculty_name = faculty_name;
    }

    public void setFaculty_level(int faculty_level) {
        this.faculty_level = faculty_level;
    }

    public void setFaculty_email(String faculty_email) {
        this.faculty_email = faculty_email;
    }

    public void setFaculty_dateofjoining(int faculty_dateofjoining) {
        this.faculty_dateofjoining = faculty_dateofjoining;
    }

    public String getSubject_code() {
        return subject_code;
    }

    public String getSubject_name() {
        return subject_name;
    }

    public int getSubject_type() {
        return subject_type;
    }

    public int getSubject_stream() {
        return subject_stream;
    }

    public int getSubject_sem() {
        return subject_sem;
    }

    public int getSubject_credits() {
        return subject_credits;
    }

    public int getSubject_hours() {
        return subject_hours;
    }

    public void setSubject_code(String subject_code) {
        this.subject_code = subject_code;
    }

    public void setSubject_name(String subject_name) {
        this.subject_name = subject_name;
    }

    public void setSubject_type(int subject_type) {
        this.subject_type = subject_type;
    }

    public void setSubject_stream(int subject_stream) {
        this.subject_stream = subject_stream;
    }
    

    public void setSubject_sem(int subject_sem) {
        this.subject_sem = subject_sem;
    }

    
    public void setSubject_credits(int subject_credits) {
        this.subject_credits = subject_credits;
    }

    public void setSubject_hours(int subject_hours) {
        this.subject_hours = subject_hours;
    }
    
    
    
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    

    public int authenticate(String id, String password)
    {
        
        int i=0;
        ConnectionClass cc=new ConnectionClass();
        cc.createConnection();
        try
        {
            ResultSet rs=cc.stmt.executeQuery(" select * from login where id='"+id+"' and password='"+password+"' ");
        
        if(rs.next())
        {
            if("admin".equals(id))
            {
                i=1;
            }
            else
            {
                i=2;
            }
        }
        else
        {
            i=3;
        }
        }
        catch(Exception e4)
        {
                    System.out.print(e4.getMessage());
        }

        return i;
    
    }
    public void addfaculty(Bean bean)
    {
        ConnectionClass cc=new ConnectionClass();
        cc.createConnection();
        try
        {
            cc.stmt.executeUpdate(" insert into faculty values ('"+bean.faculty_id+"','"+bean.faculty_name+"','"+bean.faculty_level+"','"+bean.faculty_dateofjoining+"','"+bean.faculty_email+"')  ");
            cc.stmt.executeUpdate(" insert into login values ('"+bean.faculty_id+"','"+bean.faculty_password+"')  ");
            
        
        }
        catch(Exception e4)
        {
                    System.out.print(e4.getMessage());
        }
    }
    
    public void addsubject(Bean bean)
    {
        ConnectionClass cc=new ConnectionClass();
        cc.createConnection();
        try
        {
            cc.stmt.executeUpdate(" insert into subject values ('"+bean.subject_code+"','"+bean.subject_name+"','"+bean.subject_type+"','"+bean.subject_sem+"','"+bean.subject_credits+"','"+bean.subject_hours+"')  ");
        
        
        }
        catch(Exception e4)
        {
                    System.out.print(e4.getMessage());
        }
    }
    
    public ArrayList getsubjects(int i)
    {
        ArrayList list = new ArrayList();
        ConnectionClass cc=new ConnectionClass();
        cc.createConnection();
        try
        {
            ResultSet rs=cc.stmt.executeQuery("select name from subject where sem='"+i+"' ");
        
        while(rs.next())
        {
            list.add(rs.getString(1));
        }
        
        }
        catch(Exception e4)
        {
                    System.out.print(e4.getMessage());
        }
        return(list);
    }
    public ArrayList day1_1(int type, int type2)
    {
        ArrayList list = new ArrayList();
        ConnectionClass cc=new ConnectionClass();
        cc.createConnection();
         try
        {
            ResultSet rs=cc.stmt.executeQuery("select id from place where type='"+type+"' and type2='"+type2+"'  ");
        
        while(rs.next())
        {
            list.add(rs.getString(1));
        }
        
        }
        catch(Exception e4)
        {
                    System.out.print(e4.getMessage());
        }
        return(list);
    }

        
    public String setpreference(String id,int sectionpref1,int sectionpref2,int sectionpref3,int pref1,int pref2,int pref3,int year1,int year2,int year3)
    {
        ConnectionClass cc=new ConnectionClass();
        cc.createConnection();
        String message = "hello";
        int i=0;
        try
        {
            
            i=cc.stmt.executeUpdate(" insert into preference values ('"+id+"','"+sectionpref1+"','"+sectionpref2+"','"+sectionpref3+"','"+pref1+"','"+pref2+"','"+pref3+"','"+year1+"','"+year2+"','"+year3+"')  ");
            if(i==1)
            {
                message="Subject Preference updated successfully"; 
            }
        
        }
        catch(Exception e4)
        {
                    System.out.print(e4.getMessage());
        }
        return message;
    }
    public boolean checkfacultypreference(String id)
    {
        ConnectionClass cc=new ConnectionClass();
        cc.createConnection();
        boolean a=false;
        try
        {
            
            ResultSet rs=cc.stmt.executeQuery("select id from preference where id='"+id+"' ");
            if(rs.next())
            {
               a=true; 
            }
        
        }
        catch(Exception e4)
        {
                    System.out.print(e4.getMessage());
        }
        return a;
    }
     
    public String[] showpreference(String id)
    {
        ConnectionClass cc=new ConnectionClass();
        cc.createConnection();
        String a[]=new String[4];
        try
        {
            
            ResultSet rs=cc.stmt.executeQuery("select * from finalpref where id='"+id+"' ");
            if(rs.next())
            {
               
                            a[0]=rs.getString(2);
                 
                            a[1]=rs.getString(3);
                     
                            a[2]=rs.getString(4);
                       
                            a[3]=rs.getString(5);
                        
                
                
            }
        
        }
        catch(Exception e4)
        {
                    System.out.print(e4.getMessage());
        }
        return a;
    }
    public String getnamebyid(String id)
    {
        ConnectionClass cc=new ConnectionClass();
        cc.createConnection();
        String name=null;
        try
        {
            
            ResultSet rs=cc.stmt.executeQuery("select name from faculty where id='"+id+"' ");
            if(rs.next())
            {
               name=rs.getString(1);
                     
            }
        
        }
        catch(Exception e4)
        {
                    System.out.print(e4.getMessage());
        }
        return name;
    }
}
