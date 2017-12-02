<jsp:include page="header.jsp" />  

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Itinerary</title>
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/planning_form_dayspage.css" />	
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
         <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jspdf/0.9.0rc1/jspdf.min.js"></script>
    <script type="text/javascript">
        var doc = new jsPDF();
        var specialElementHandlers = {
        '#editor': function (element, renderer) {
        return true;
        }
        };

        $(document).ready(function() {
        $('#btn').click(function () {
        doc.fromHTML($('#content').html(), 15, 15, {
        'width': 170,
        'elementHandlers': specialElementHandlers
        });
        doc.save('sample-content.pdf');
        });
        });
    </script>
    </head>
    <body>
        <div id="content" style="height:5000px; width:100%;  border:black solid 2px; padding:0px; margin:0px;">

            <%@ page import="MODAL_PROJECT.FetchDetails" %>
            <%@ page import="MODAL_PROJECT.Bean" %>
            <%@page import="java.util.Iterator"%>
            <%@page import="java.util.ArrayList"%>
            <%@page import="MODAL_PROJECT.Bean"%>
            <%@page contentType="text/html" pageEncoding="UTF-8"%>
            <%!
                double time(String lat1, String lat2, String lat3, String lat4) {
                    int minutes = 0;
                    double min;
                    float a, b, c, d, diff1, diff2;
                    a = Float.parseFloat(lat1);
                    b = Float.parseFloat(lat2);
                    c = Float.parseFloat(lat3);
                    d = Float.parseFloat(lat4);
                    diff1 = Math.abs(a - c);
                    diff2 = Math.abs(b - d);
                    diff1 = diff1 + diff2;
                    if (diff1 > 0.1) {
                        min = diff1 * 109.5;
                    } else {

                        min = diff1 * 142.2;
                    }
                    min = min * 2;
                    return min;

                }

                int caltime(String s1, String s2) {
                    int a = s1.charAt(0);
                    int b = s1.charAt(1);
                    int c = s2.charAt(0);
                    int d = s2.charAt(1);
                    int e = a * 10 + b;
                    int f = c * 10 + d;
                    int hours = (f - e) * 60;

                    a = s1.charAt(3);
                    b = s1.charAt(4);
                    c = s2.charAt(3);
                    d = s2.charAt(4);
                    e = a * 10 + b;
                    f = c * 10 + d;
                    hours = hours + (f - e);
                    return hours;
                }
            %>


            <%
                int currentday;
                String date1 = request.getParameter("date1");
                // out.print(date1);
                String start_time1 = request.getParameter("start_time1");
                // out.print(start_time1);

                String end_time1 = request.getParameter("end_time1");
                char et4[] = new char[4];
                et4[0] = end_time1.charAt(0);
                et4[1] = end_time1.charAt(1);
                et4[2] = end_time1.charAt(3);
                et4[3] = end_time1.charAt(4);
                String et1 = new String(et4);
                //out.print(et1+"et1");
                //out.print(end_time1);
                int s = start_time1.charAt(0);
                s = s - 48;
                s = s * 10;
                s = s + (start_time1.charAt(1) - 48);

                //out.print(s+"s");
                int m = start_time1.charAt(3);
                m = m - 48;
                m = m * 10;
                m = m + (start_time1.charAt(4) - 48);
                //  out.print(m+"m");

                // out.print("here");
                // out.print(caltime(start_time1,end_time1));
                String start = request.getParameter("start");
                // out.print(start);

                String start_loc1 = request.getParameter("start_loc1");
                String end_loc1 = request.getParameter("end_loc1");
                //out.print(end_loc1);
                String monuments1 = request.getParameter("monuments1");
                String nature1 = request.getParameter("nature1");
                String arts1 = request.getParameter("arts1");
                String entertainment1 = request.getParameter("entertainment1");
                String rating1 = request.getParameter("rating1");
                String breakfast1 = request.getParameter("breakfast1");
                String lunch1 = request.getParameter("lunch1");
                String dinner1 = request.getParameter("dinner1");
                String cafe1 = request.getParameter("cafe1");
                // out.print(cafe1);
                String indian1 = request.getParameter("indian1");
                // out.print(indian1);
                String abcd = request.getParameter("indian1");
              //  out.print(abcd);
                String italian1 = request.getParameter("italian1");
                // out.print(italian1);
                String mexican1 = request.getParameter("mexican1");
                // out.print(mexican1);
                String chinese1 = request.getParameter("chinese1");
                // out.print(chinese1);

                String date2 = request.getParameter("date2");
                // out.print(date2);
                String start_time2 = request.getParameter("start_time2");

                // out.print(start_time2+"starttime2");
                int s1 = start_time2.charAt(0);
                s1 = s1 - 48;
                s1 = s1 * 10;
                s1 = s1 + (start_time2.charAt(1) - 48);
                // out.print(s1+"s1");

                int m1 = start_time2.charAt(3);
                m1 = m1 - 48;
                m1 = m1 * 10;
                m1 = m1 + (start_time2.charAt(4) - 48);
                // out.print(m1+"m1");

                String end_time2 = request.getParameter("end_time2");
                char et3[] = new char[4];
                et3[0] = end_time2.charAt(0);
                et3[1] = end_time2.charAt(1);
                et3[2] = end_time2.charAt(3);
                et3[3] = end_time2.charAt(4);
                String et2 = new String(et3);
                // out.print(et2+"et2");

                // out.print(end_time2);
                String start_loc2 = request.getParameter("start_loc2");
                String end_loc2 = request.getParameter("end_loc2");
                String monuments2 = request.getParameter("monuments2");
                //  out.print(monuments2);
                String nature2 = request.getParameter("nature2");
                // out.print(nature2);
                String arts2 = request.getParameter("arts2");

                //out.print(arts2);
                String entertainment2 = request.getParameter("entertainment2");
                //out.print(entertainment2);
                String rating2 = request.getParameter("rating2");
                String breakfast2 = request.getParameter("breakfast2");
                String lunch2 = request.getParameter("lunch2");
                String dinner2 = request.getParameter("dinner2");
                String cafe2 = request.getParameter("cafe2");
                //out.print(cafe2);
                String indian2 = request.getParameter("indian2");
                // out.print(indian2);
                String italian2 = request.getParameter("italian2");
                // out.print(italian2);
                String mexican2 = request.getParameter("mexican2");
                // out.print(mexican2);
                String chinese2 = request.getParameter("chinese2");
                // out.print(chinese2);

                String date3 = request.getParameter("date3");
                String start_time3 = request.getParameter("start_time3");
                String end_time3 = request.getParameter("end_time3");
                String start_loc3 = request.getParameter("start_loc3");
                String end_loc3 = request.getParameter("end_loc3");
                String monuments3 = request.getParameter("monuments3");
                String nature3 = request.getParameter("nature3");
                String arts3 = request.getParameter("arts3");
                String entertainment3 = request.getParameter("entertainment3");
                String rating3 = request.getParameter("rating3");
                String breakfast3 = request.getParameter("breakfast3");
                String lunch3 = request.getParameter("lunch3");
                String dinner3 = request.getParameter("dinner3");
                String cafe3 = request.getParameter("cafe3");
                String indian3 = request.getParameter("indian3");
                String italian3 = request.getParameter("italian3");
                String mexican3 = request.getParameter("mexican3");
                String chinese3 = request.getParameter("chinese3");

                String date4 = request.getParameter("date4");
                String start_time4 = request.getParameter("start_time4");
                String end_time4 = request.getParameter("end_time4");
                String start_loc4 = request.getParameter("start_loc4");
                String end_loc4 = request.getParameter("end_loc4");
                String monuments4 = request.getParameter("monuments4");
                String nature4 = request.getParameter("nature4");
                String arts4 = request.getParameter("arts4");
                String entertainment4 = request.getParameter("entertainment4");
                String rating4 = request.getParameter("rating4");
                String breakfast4 = request.getParameter("breakfast4");
                String lunch4 = request.getParameter("lunch4");
                String dinner4 = request.getParameter("dinner4");
                String cafe4 = request.getParameter("cafe4");
                String indian4 = request.getParameter("indian4");
                String italian4 = request.getParameter("italian4");
                String mexican4 = request.getParameter("mexican4");
                String chinese4 = request.getParameter("chinese4");
                String start_hidden1=request.getParameter("start_loc_hide1");
                 String start_hidden2=request.getParameter("start_loc_hide2");
                String end_hidden1=request.getParameter("end_loc_hide1");
                String end_hidden2=request.getParameter("end_loc_hide2");
           
                String slat1,slong1,slat2,slong2;
                String elat1,elong1,elat2,elong2;
                String[] q20 = start_hidden1.split(",");
                String[] q21 = start_hidden2.split(",");
                String[] q22 = end_hidden2.split(",");
                String[] q23 = end_hidden2.split(",");
                slat1=q20[0];
                slat1=slat1.replace('(', ' ');
                slong1=q20[1];
                slong1=slong1.replace(')', ' ');
                slat2=q21[0];
                slat2=slat2.replace('(', ' ');
                slong2=q21[1];
                slong2=slong2.replace(')', ' ');
                elat1=q22[0];
                elat1=elat1.replace('(', ' ');
                elong1=q22[1];
                elong1=elong1.replace(')', ' ');
                elat2=q22[0];
                elat2=elat2.replace('(', ' ');
                elong2=q22[1];
                elong2=elong2.replace(')', ' ');
                
                slat1=slat1.trim();
                slat2=slat2.trim();
                elat1=elat1.trim();
                elat2=elat2.trim();
                slong1=slong1.trim();
                slong2=slong2.trim();
                elong1=elong1.trim();
                elong2=elong2.trim();
               //out.print(slat1+"hello"+slong1+"hello"+slat2+"hello"+slong2+"hello"+elat1+"hello"+slong1+"hello"+elat2+"hello"+elong2+"hello");
           

            %>
            <%
            %>
            <% FetchDetails fd1 = new FetchDetails();

    
            %>
            <%//day 1
                FetchDetails fd = new FetchDetails();
                if (monuments1 != null) {

                    fd.day1_1(1, 1);
                    fd.day1_1(1, 2);
                }
                if (nature1 != null) {
                    fd.day1_1(2, 1);
                    fd.day1_1(2, 2);
                }
                if (arts1 != null) {
                    fd.day1_1(4, 1);
                    fd.day1_1(4, 2);
                }
                if (entertainment1 != null) {
                    fd.day1_1(5, 1);
                    fd.day1_1(5, 2);
                    fd.day1_1(5, 3);
                    fd.day1_1(5, 4);
                }
                int day1 = fd.geti1();
                // out.print(day1 + "day1");
            //cuisine day 1
                if (cafe1 != null) {
                    fd.day1_1(3, 5);

                }
                if (indian1 != null) {

                    fd.day1_1(3, 4);

                }
                if (italian1 != null) {
                    fd.day1_1(3, 2);

                }
                if (mexican1 != null) {
                    fd.day1_1(3, 1);

                }
                if (chinese1 != null) {
                    fd.day1_1(3, 3);

                }
                int day1_f = fd.geti1();

                // out.print(day1_f + "day1_f");

            %>
            <%//day 2
                if (monuments2 != null) {
                    fd.day2_1(1, 1);
                    fd.day2_1(1, 2);
                }
                if (nature2 != null) {
                    fd.day2_1(2, 1);
                    fd.day2_1(2, 2);
                }
                if (arts2 != null) {
                    fd.day2_1(4, 1);
                    fd.day2_1(4, 2);
                }
                if (entertainment2 != null) {
                    fd.day2_1(5, 1);
                    fd.day2_1(5, 2);
                    fd.day2_1(5, 3);
                    fd.day2_1(5, 4);
                }
                int day2 = fd.geti2();
                // out.print(day2 + "day2");

            //cuisine day 2
                if (cafe2 != null) {  // out.print("suyash");
                    fd.day2_1(3, 5);

                }
                if (indian2 != null) {
                    fd.day2_1(3, 4);

                }
                if (italian2 != null) {
                    fd.day2_1(3, 2);

                }
                if (mexican2 != null) {
                    fd.day2_1(3, 1);

                }
                if (chinese2 != null) {
                    fd.day2_1(3, 3);

                }
                int day2_f = fd.geti2();
            //    out.print(day2_f + "day2_f");


            %>
            <%--//day 3
            if(monuments3!=null)
                {
                    fd.day3_1(1, 1);
                    fd.day3_1(1, 2);
                    }
            if(nature3!=null)
                {
                    fd.day3_1(2,1);
                    fd.day3_1(2,2);
                    }
                if(arts3!=null)
                {
                    fd.day3_1(4, 1);
                    fd.day3_1(4, 2);
                    }
            if(entertainment3!=null)
                {
                    fd.day3_1(5, 1);
                    fd.day3_1(5, 2);
                    fd.day3_1(5, 3);
                    fd.day3_1(5, 4);
                    }



//cuisine day 3
if(cafe3!=null)
    {
        fd.day3_2(3, 5);
     
        }
if(indian3!=null)
    {
        fd.day3_2(3,4);
       
        }
    if(italian3!=null)
    {
        fd.day3_2(3,2);
       
        }
if(mexican3!=null)
    {
        fd.day3_2(3,1);
       
        }
if(chinese3!=null)
    {
        fd.day3_2(3,3);
       
        }



%><%//day 4
if(monuments4!=null)
    {
        fd.day4_1(1, 1);
        fd.day4_1(1, 2);
        }
if(nature4!=null)
    {
        fd.day4_1(2,1);
        fd.day4_1(2,2);
        }
    if(arts4!=null)
    {
        fd.day4_1(4, 1);
        fd.day4_1(4, 2);
        }
if(entertainment4!=null)
    {
        fd.day4_1(5, 1);
        fd.day4_1(5, 2);
        fd.day4_1(5, 3);
        fd.day4_1(5, 4);
        }



//cuisine day 4
if(cafe4!=null)
    {
        fd.day4_2(3, 5);
     
        }
if(indian4!=null)
    {
        fd.day4_2(3,4);
       
        }
    if(italian4!=null)
    {
        fd.day4_2(3,2);
       
        }
if(mexican4!=null)
    {
        fd.day4_2(3,1);
       
        }
if(chinese4!=null)
    {
        fd.day4_2(3,3);
       
        }



            --%>
            <%//Day 1
                String id_day1_1[] = fd.getId_day1_1();
                String name_day1_1[] = fd.getName_day1_1();
                String days_day1_1[] = fd.getDays_day1_1();
                String ot1_day1_1[] = fd.getOt1_day1_1();
                String ct1_day1_1[] = fd.getCt1_day1_1();
                String ot2_day1_1[] = fd.getOt2_day1_1();
                String ct2_day1_1[] = fd.getCt2_day1_1();
                for (int i = 0; i < 100; i++) {
                    if (ot2_day1_1[i] == null) {
                        ot2_day1_1[i] = "0000";
                    }

                    if (ct2_day1_1[i] == null) {
                        ct2_day1_1[i] = "0000";

                    }
                }
                String lati_day1_1[] = fd.getLati_day1_1();
                String longi_day1_1[] = fd.getLongi_day1_1();
                String cost_day1_1[] = fd.getCost_day1_1();
                String rating_day1_1[] = fd.getRating_day1_1();
                String ts_day1_1[] = fd.getTs_day1_1();
                /*for(int r=0;r<day1_f;r++)
            {
                out.print(name_day1_1[r]);
            }*/
            //Day 2

                String id_day2_1[] = fd.getId_day2_1();
                String name_day2_1[] = fd.getName_day2_1();
                String days_day2_1[] = fd.getDays_day2_1();
                String ot1_day2_1[] = fd.getOt1_day2_1();
                String ct1_day2_1[] = fd.getCt1_day2_1();
                String ot2_day2_1[] = fd.getOt2_day2_1();
                String ct2_day2_1[] = fd.getCt2_day2_1();
                for (int i = 0; i < 100; i++) {
                    if (ot2_day2_1[i] == null) {
                        ot2_day2_1[i] = "0000";
                    }

                    if (ct2_day2_1[i] == null) {
                        ct2_day2_1[i] = "0000";

                    }
                }
                String lati_day2_1[] = fd.getLati_day2_1();
                String longi_day2_1[] = fd.getLongi_day2_1();
                String cost_day2_1[] = fd.getCost_day2_1();
                String rating_day2_1[] = fd.getRating_day2_1();
                String ts_day2_1[] = fd.getTs_day2_1();

               /* out.print(day1);
                out.print(day1_f);
                out.print(day2);
                out.print(day2_f);
                
            //Day3
            String id_day3_1[]=fd.getId_day3_1();
            String name_day3_1[]=fd.getName_day3_1();
            String days_day3_1[]=fd.getDays_day3_1();
            String ot1_day3_1[]=fd.getOt1_day3_1();
            String ct1_day3_1[]=fd.getCt1_day3_1();
            String ot2_day3_1[]=fd.getOt2_day3_1();
            String ct2_day3_1[]=fd.getCt2_day3_1();
            String lati_day3_1[]=fd.getLati_day3_1();
            String longi_day3_1[]=fd.getLongi_day3_1();
            String cost_day3_1[]=fd.getCost_day3_1();
            String rating_day3_1[]=fd.getRating_day3_1();
            String ts_day3_1[]=fd.getTs_day3_1();
            i=0;

            //Day 4
            String id_day4_1[]=fd.getId_day4_1();
            String name_day4_1[]=fd.getName_day4_1();
            String days_day4_1[]=fd.getDays_day4_1();
            String ot1_day4_1[]=fd.getOt1_day4_1();
            String ct1_day4_1[]=fd.getCt1_day4_1();
            String ot2_day4_1[]=fd.getOt2_day4_1();
            String ct2_day4_1[]=fd.getCt2_day4_1();
            String lati_day4_1[]=fd.getLati_day4_1();
            String longi_day4_1[]=fd.getLongi_day4_1();
            String cost_day4_1[]=fd.getCost_day4_1();
            String rating_day4_1[]=fd.getRating_day4_1();
            String ts_day4_1[]=fd.getTs_day4_1();
            i=0;

            i=0;

            /*


            out.println(id_day1_1[0]);
            out.println(name_day1_1[0]);
            out.println(days_day1_1[0]);
            out.println(ot1_day1_1[0]);
            out.println(ct1_day1_1[0]);
            out.println(ot2_day1_1[0]);
            out.println(ct2_day1_1[0]);
            out.println(lati_day1_1[0]);
            out.println(longi_day1_1[0]);
            out.println(cost_day1_1[0]);
            out.println(rating_day1_1[0]);
            out.println(ts_day1_1[0]);

                 */
             /*
            out.println(id_day4_1[0]);
            out.println(name_day4_1[0]);
            out.println(days_day4_1[0]);
            out.println(ot1_day4_1[0]);
            out.println(ct1_day4_1[0]);
            out.println(ot2_day4_1[0]);
            out.println(ct2_day4_1[0]);
            out.println(lati_day4_1[0]);
            out.println(longi_day4_1[0]);
            //out.println(cost_day4_1[0]);
            //out.println(rating_day4_1[0]);
            //out.println(ts_day4_1[0]);*/
                String currentlat;
                int top10[][] = new int[10][30];
                int trip[][] = new int[1000][30];
                int value[] = new int[1000];
                int z, flag, x, y, count, flag2;
                String time;
                //  double bhadri = time("26.89287", "75.814554", "26.915394 ", "75.809469");
                // out.print(bhadri);
                // boolean suyash = isopen("26.911676", "75.819469", "26.89287", "75.814554", "900", "1900", "1700", "2200", "1", 8, 0, "26.935807", "75.792184", "2200");

                // boolean suyash=isopen("26.899269","75.858629","26.910849","75.798603","800","0000","2000","0000","0.5",13 ,14,"26.935807","75.792184","2233"  );
            //out.print(suyash);
                int starthr = s;
                int startmin = m;
                int currenthr, currentmin;
                int timetaken;
                int rating;
                String startlat = slat1;
                String startlong = slong1;
                String endlat = elat1;
                String endlong = elong1;
                String currentlong;
                String et = et1;
                currentday = date1.charAt(0);
                double min;
                int temp;
                int flag3 = 0;
                int lunch = 1, dinner = 1;
                for (z = 0; z < 1000; z++) {
                    currenthr = starthr;
                    currentmin = startmin;
                    flag = 0;
                    currentlat = startlat;
                    currentlong = startlong;
                    lunch = 1;
                    dinner = 1;
                    y = 0;
                    while (flag == 0) {
                        count = 0;
                        x = 0;

                        while (count < 10) {
                            count++;
                            // out.print(count+"count                 \n");
                            x = (int) (Math.random() * 1000) % day1;
                            // out.print(x+"x               \n");
                            if (currenthr >= 12 && currenthr <= 15 && lunch == 1) {
                                float a, b, c, d, diff1, diff2;

                                a = Float.parseFloat(currentlat);
                                //   out.print(a+"a               \n");
                                b = Float.parseFloat(currentlong);
                                //  out.print(b+"b               \n");
                                min = 999;
                                temp = 0;
                                // out.print(day1 +"day1");
                                //out.print(day1_f +"day1_f");
                                for (int g = day1; g < day1_f; g++) {
                                    flag3 = 0;
                                    for (int h = 0; h < y; h++) {
                                        if (trip[z][h] == g) {
                                            flag3 = 1;
                                            break;
                                        }
                                    }
                                    c = Float.parseFloat(lati_day1_1[g]);
                                    //  out.print(c+"c               \n");
                                    d = Float.parseFloat(longi_day1_1[g]);
                                    // out.print(d+"d               \n");
                                    diff1 = Math.abs(a - c);
                                    diff2 = Math.abs(b - d);
                                    diff1 = diff1 + diff2;
                                    // out.print(diff1+"diff1               \n");
                                    if (diff1 < min && flag3 == 0) {
                                        temp = g;
                                        //   out.print(temp+"temp               \n");
                                        min = diff1;
                                        //  out.print(min+ "min               \n");

                                    }
                                }
                                lunch = 0;
                                trip[z][y++] = temp;
                                //out.print(trip[z][y-1]+"trip[z][y-1]               \n");
                                timetaken = (int) time(lati_day1_1[temp], longi_day1_1[temp], currentlat, currentlong);
                                // out.print(name_day1_1[temp] +"resturant");
                                //out.print(timetaken+"timetaken               \n");
                                timetaken = timetaken + (int) Float.parseFloat(ts_day1_1[temp]) * 60;
                                //out.print(timetaken+"timetaken               \n");
                                currenthr += timetaken / 60;
                                //out.print(currenthr+"currenthr               \n");
                                currentmin += timetaken % 60;
                                //out.print(currentmin+"currentmin               \n");
                                if (currentmin >= 60) {
                                    currentmin = currentmin - 60;
                                    //  out.print(currentmin+"currentmin               \n");
                                    currenthr += 1;
                                    //out.print(currenthr+"currenthr               \n");
                                }
                                currentlat = lati_day1_1[temp];
                                //out.print(currentlat+"current long");
                                currentlong = longi_day1_1[temp];
                                //out.print(currentlong+" current long");
                            } else if (currenthr >= 19 && currenthr <= 22 && dinner == 1) {
                                float a, b, c, d, diff1, diff2;

                                a = Float.parseFloat(currentlat);
                                //   out.print(a+"a               \n");
                                b = Float.parseFloat(currentlong);
                                //  out.print(b+"b               \n");
                                min = 999;
                                temp = 0;
                                // out.print(day1 +"day1");
                                //out.print(day1_f +"day1_f");
                                for (int g = day1; g < day1_f; g++) {
                                    flag3 = 0;
                                    for (int h = 0; h < y; h++) {
                                        if (trip[z][h] == g) {
                                            flag3 = 1;
                                            break;
                                        }
                                    }
                                    c = Float.parseFloat(lati_day1_1[g]);
                                    //  out.print(c+"c               \n");
                                    d = Float.parseFloat(longi_day1_1[g]);
                                    // out.print(d+"d               \n");
                                    diff1 = Math.abs(a - c);
                                    diff2 = Math.abs(b - d);
                                    diff1 = diff1 + diff2;
                                    // out.print(diff1+"diff1               \n");
                                    if (diff1 < min && flag3 == 0) {
                                        temp = g;
                                        //   out.print(temp+"temp               \n");
                                        min = diff1;
                                        //  out.print(min+ "min               \n");

                                    }
                                }
                                dinner = 0;
                                trip[z][y++] = temp;
                                //out.print(trip[z][y-1]+"trip[z][y-1]               \n");
                                timetaken = (int) time(lati_day1_1[temp], longi_day1_1[temp], currentlat, currentlong);
                                // out.print(name_day1_1[temp] +"resturant");
                                //out.print(timetaken+"timetaken               \n");
                                timetaken = timetaken + (int) Float.parseFloat(ts_day1_1[temp]) * 60;
                                //out.print(timetaken+"timetaken               \n");
                                currenthr += timetaken / 60;
                                //out.print(currenthr+"currenthr               \n");
                                currentmin += timetaken % 60;
                                //out.print(currentmin+"currentmin               \n");
                                if (currentmin >= 60) {
                                    currentmin = currentmin - 60;
                                    //  out.print(currentmin+"currentmin               \n");
                                    currenthr += 1;
                                    //out.print(currenthr+"currenthr               \n");
                                }
                                currentlat = lati_day1_1[temp];
                                //out.print(currentlat+"current long");
                                currentlong = longi_day1_1[temp];
                                //out.print(currentlong+" current long");
                            } else {
                                flag2 = 0;
                                for (int k = 0; k < y; k++) {
                                    if (trip[z][k] == x) {
                                        flag2 = 1;
                                        break;
                                    }
                                }

                                if (flag2 == 0) {
                                    // out.print("bhadriiiiiiii");
                                    //  out.print(lati_day1_1[x] +longi_day1_1[x]+ currentlat+ currentlong+ ot1_day1_1[x]+ ot2_day1_1[x]+ ct1_day1_1[x]+ ct2_day1_1[x]+ts_day1_1[x]+ currenthr+ currentmin+ endlat+ endlong+et);
                                    if (isopen(currentday, days_day1_1[x], lati_day1_1[x], longi_day1_1[x], currentlat, currentlong, ot1_day1_1[x], ot2_day1_1[x], ct1_day1_1[x], ct2_day1_1[x], ts_day1_1[x], currenthr, currentmin, endlat, endlong, et)) {

                                        //  out.print(isopen(lati_day1_1[x], longi_day1_1[x], currentlat, currentlong, ot1_day1_1[x], ot2_day1_1[x], ct1_day1_1[x], ct2_day1_1[x], ts_day1_1[x], currenthr, currentmin, endlat, endlong, et));
                                        //      out.print("here");
                                        trip[z][y++] = x;
                                        //    out.print(trip[z][y-1]+"trip[z][y-1]               \n");
                                        //  out.print(name_day1_1[x]+" name place");
                                        timetaken = (int) time(lati_day1_1[x], longi_day1_1[x], currentlat, currentlong);
                                        currentlat = lati_day1_1[x];
                                        //out.print(currentlat+"currentlat               \n");
                                        currentlong = longi_day1_1[x];
                                        //out.print(currentlong+"currentlong               \n");

                                        //out.print(timetaken+"timetaken               \n");
                                        timetaken = timetaken + (int) (Double.parseDouble(ts_day1_1[x]) * 60);
                                        //out.print(timetaken+"timetaken               \n");
                                        currenthr += timetaken / 60;
                                        //out.print(currenthr+"currenthr               \n");
                                        currentmin += timetaken % 60;
                                        //out.print(currentmin+"currentmin               \n");
                                        if (currentmin >= 60) {
                                            currentmin = currentmin - 60;
                                            //  out.print(currentmin+"currentmin               \n");
                                            currenthr += 1;
                                            //out.print(currenthr+"currenthr               \n");
                                        }
                                        count = 0;
                                        if (Double.parseDouble(rating_day1_1[x]) >= 4.5) {
                                            rating = 18;
                                        } else if (Double.parseDouble(rating_day1_1[x]) >= 4.0) {
                                            rating = 12;
                                        } else if (Double.parseDouble(rating_day1_1[x]) >= 3.6) {
                                            rating = 8;
                                        } else {
                                            rating = 6;
                                        }

                                        value[z] = value[z] + rating;
                                        //out.print(value[z]+"value[z]               \n");
                                        break;
                                    }

                                }

                                if (count == 10) {

                                    flag = 1;
                                }

                            }
                        }

                    }
                }

                int valtop10[] = new int[10];
                int count1 = 0;
                while (count1 < 10) {
                    //out.print(count1);
                    count1++;
                    int ind, val, j, i;

                    for (i = 0; i < 10; i++) {
                        ind = 0;
                        val = 0;
                        for (j = 0; j < 1000; j++) {
                            if (value[j] > val) {
                                ind = j;
                                val = value[j];
                            }

                        }
                        valtop10[i] = value[ind];
                        value[ind] = 0;

                        for (int k = 0; k < 20; k++) {
                            top10[i][k] = trip[ind][k];
                        }

                    }
                    for (int ab = 0; ab < 1000; ab++) {

                        for (int bc = 0; bc < 20; bc++) {
                            trip[ab][bc] = 0;

                        }

                    }
                    for (i = 0; i < 10; i++) {
                        for (j = 0; j < 20; j++) {
                            //   out.print(name_day1_1[top10[i][j]]);
                            trip[i][j] = top10[i][j];
                        }
                        value[i] = valtop10[i];
                        //  out.print("\n");
                    }
                    int route;
                    for (int k = 10; k < 1000; k++) {
                        value[k] = 0;
                        currenthr = starthr;
                        currentmin = startmin;
                        flag = 0;
                        currentlat = startlat;
                        currentlong = startlong;
                        lunch = 1;
                        dinner = 1;
                        y = 0;

                        if (k < 185) {
                            route = 0;

                        } else if (k < 335) {
                            route = 1;
                        } else if (k < 460) {
                            route = 2;
                        } else if (k < 585) {
                            route = 3;
                        } else if (k < 685) {
                            route = 4;
                        } else if (k < 785) {
                            route = 5;
                        } else if (k < 860) {
                            route = 6;
                        } else if (k < 910) {
                            route = 7;
                        } else if (k < 955) {
                            route = 8;
                        } else {
                            route = 9;
                        }
                        int try1 = 0;
                        while (try1 == 0) {
                            try1 = (int) (Math.random() * 1000) % 2;
                            trip[k][y] = top10[route][y];
                            if (top10[route][y] >= day1) {
                                lunch = 0;
                            }
                            if (top10[route][y] >= day1 && lunch == 0) {
                                dinner = 0;
                            }
                            timetaken = (int) time(lati_day1_1[top10[route][y]], longi_day1_1[top10[route][y]], currentlat, currentlong);
                            currentlat = lati_day1_1[top10[route][y]];
                            currentlong = longi_day1_1[top10[route][y]];
                            timetaken = timetaken + (int) (Double.parseDouble(ts_day1_1[top10[route][y]]) * 60);
                            //out.print(timetaken+"timetaken               \n");
                            currenthr += timetaken / 60;
                            //out.print(currenthr+"currenthr               \n");
                            currentmin += timetaken % 60;
                            //out.print(currentmin+"currentmin               \n");
                            if (currentmin >= 60) {
                                currentmin = currentmin - 60;
                                //  out.print(currentmin+"currentmin               \n");
                                currenthr += 1;
                                //out.print(currenthr+"currenthr               \n");
                            }

                            if (Double.parseDouble(rating_day1_1[top10[route][y]]) >= 4.5) {
                                rating = 18;
                            } else if (Double.parseDouble(rating_day1_1[top10[route][y]]) >= 4.0) {
                                rating = 12;
                            } else if (Double.parseDouble(rating_day1_1[top10[route][y]]) >= 3.6) {
                                rating = 8;
                            } else {
                                rating = 6;
                            }

                            value[k] = value[k] + rating;
                            y++;

                        }
                        while (flag == 0) {
                            count = 0;
                            x = 0;

                            while (count < 10) {
                                count++;
                                // out.print(count+"count                 \n");
                                x = (int) (Math.random() * 1000) % day1;
                                // out.print(x+"x               \n");
                                if (currenthr >= 12 && currenthr <= 15 && lunch == 1) {
                                    float a, b, c, d, diff1, diff2;

                                    a = Float.parseFloat(currentlat);
                                    //   out.print(a+"a               \n");
                                    b = Float.parseFloat(currentlong);
                                    //  out.print(b+"b               \n");
                                    min = 999;
                                    temp = 0;
                                    // out.print(day1 +"day1");
                                    //out.print(day1_f +"day1_f");
                                    for (int g = day1; g < day1_f; g++) {
                                        flag3 = 0;
                                        for (int h = 0; h < y; h++) {
                                            if (trip[k][h] == g) {
                                                flag3 = 1;
                                                break;
                                            }
                                        }
                                        c = Float.parseFloat(lati_day1_1[g]);
                                        //  out.print(c+"c               \n");
                                        d = Float.parseFloat(longi_day1_1[g]);
                                        // out.print(d+"d               \n");
                                        diff1 = Math.abs(a - c);
                                        diff2 = Math.abs(b - d);
                                        diff1 = diff1 + diff2;
                                        // out.print(diff1+"diff1               \n");
                                        if (diff1 < min && flag3 == 0) {
                                            temp = g;
                                            //   out.print(temp+"temp               \n");
                                            min = diff1;
                                            //  out.print(min+ "min               \n");

                                        }
                                    }
                                    lunch = 0;
                                    trip[k][y++] = temp;
                                    //out.print(trip[z][y-1]+"trip[z][y-1]               \n");
                                    timetaken = (int) time(lati_day1_1[temp], longi_day1_1[temp], currentlat, currentlong);
                                    // out.print(name_day1_1[temp] +"resturant");
                                    //out.print(timetaken+"timetaken               \n");
                                    timetaken = timetaken + (int) Float.parseFloat(ts_day1_1[temp]) * 60;
                                    //out.print(timetaken+"timetaken               \n");
                                    currenthr += timetaken / 60;
                                    //out.print(currenthr+"currenthr               \n");
                                    currentmin += timetaken % 60;
                                    //out.print(currentmin+"currentmin               \n");
                                    if (currentmin >= 60) {
                                        currentmin = currentmin - 60;
                                        //  out.print(currentmin+"currentmin               \n");
                                        currenthr += 1;
                                        //out.print(currenthr+"currenthr               \n");
                                    }
                                    currentlat = lati_day1_1[temp];
                                    //out.print(currentlat+"current long");
                                    currentlong = longi_day1_1[temp];
                                    //out.print(currentlong+" current long");
                                } else if (currenthr >= 19 && currenthr <= 22 && dinner == 1) {
                                    float a, b, c, d, diff1, diff2;

                                    a = Float.parseFloat(currentlat);
                                    //   out.print(a+"a               \n");
                                    b = Float.parseFloat(currentlong);
                                    //  out.print(b+"b               \n");
                                    min = 999;
                                    temp = 0;
                                    // out.print(day1 +"day1");
                                    //out.print(day1_f +"day1_f");
                                    for (int g = day1; g < day1_f; g++) {
                                        flag3 = 0;
                                        for (int h = 0; h < y; h++) {
                                            if (trip[k][h] == g) {
                                                flag3 = 1;
                                                break;
                                            }
                                        }
                                        c = Float.parseFloat(lati_day1_1[g]);
                                        //  out.print(c+"c               \n");
                                        d = Float.parseFloat(longi_day1_1[g]);
                                        // out.print(d+"d               \n");
                                        diff1 = Math.abs(a - c);
                                        diff2 = Math.abs(b - d);
                                        diff1 = diff1 + diff2;
                                        // out.print(diff1+"diff1               \n");
                                        if (diff1 < min && flag3 == 0) {
                                            temp = g;
                                            //   out.print(temp+"temp               \n");
                                            min = diff1;
                                            //  out.print(min+ "min               \n");

                                        }
                                    }
                                    dinner = 0;
                                    trip[k][y++] = temp;
                                    //out.print(trip[z][y-1]+"trip[z][y-1]               \n");
                                    timetaken = (int) time(lati_day1_1[temp], longi_day1_1[temp], currentlat, currentlong);
                                    // out.print(name_day1_1[temp] +"resturant");
                                    //out.print(timetaken+"timetaken               \n");
                                    timetaken = timetaken + (int) Float.parseFloat(ts_day1_1[temp]) * 60;
                                    //out.print(timetaken+"timetaken               \n");
                                    currenthr += timetaken / 60;
                                    //out.print(currenthr+"currenthr               \n");
                                    currentmin += timetaken % 60;
                                    //out.print(currentmin+"currentmin               \n");
                                    if (currentmin >= 60) {
                                        currentmin = currentmin - 60;
                                        //  out.print(currentmin+"currentmin               \n");
                                        currenthr += 1;
                                        //out.print(currenthr+"currenthr               \n");
                                    }
                                    currentlat = lati_day1_1[temp];
                                    //out.print(currentlat+"current long");
                                    currentlong = longi_day1_1[temp];
                                    //out.print(currentlong+" current long");
                                } else {
                                    flag2 = 0;
                                    for (int k1 = 0; k1 < y; k1++) {
                                        if (trip[k][k1] == x) {
                                            flag2 = 1;
                                            break;
                                        }
                                    }

                                    if (flag2 == 0) {
                                        // out.print("bhadriiiiiiii");
                                        //  out.print(lati_day1_1[x] +longi_day1_1[x]+ currentlat+ currentlong+ ot1_day1_1[x]+ ot2_day1_1[x]+ ct1_day1_1[x]+ ct2_day1_1[x]+ts_day1_1[x]+ currenthr+ currentmin+ endlat+ endlong+et);
                                        if (isopen(currentday, days_day1_1[x], lati_day1_1[x], longi_day1_1[x], currentlat, currentlong, ot1_day1_1[x], ot2_day1_1[x], ct1_day1_1[x], ct2_day1_1[x], ts_day1_1[x], currenthr, currentmin, endlat, endlong, et)) {

                                            //  out.print(isopen(lati_day1_1[x], longi_day1_1[x], currentlat, currentlong, ot1_day1_1[x], ot2_day1_1[x], ct1_day1_1[x], ct2_day1_1[x], ts_day1_1[x], currenthr, currentmin, endlat, endlong, et));
                                            //      out.print("here");
                                            trip[k][y++] = x;
                                            //    out.print(trip[z][y-1]+"trip[z][y-1]               \n");
                                            //  out.print(name_day1_1[x]+" name place");
                                            timetaken = (int) time(lati_day1_1[x], longi_day1_1[x], currentlat, currentlong);
                                            currentlat = lati_day1_1[x];
                                            //out.print(currentlat+"currentlat               \n");
                                            currentlong = longi_day1_1[x];
                                            //out.print(currentlong+"currentlong               \n");

                                            //out.print(timetaken+"timetaken               \n");
                                            timetaken = timetaken + (int) (Double.parseDouble(ts_day1_1[x]) * 60);
                                            //out.print(timetaken+"timetaken               \n");
                                            currenthr += timetaken / 60;
                                            //out.print(currenthr+"currenthr               \n");
                                            currentmin += timetaken % 60;
                                            //out.print(currentmin+"currentmin               \n");
                                            if (currentmin >= 60) {
                                                currentmin = currentmin - 60;
                                                //  out.print(currentmin+"currentmin               \n");
                                                currenthr += 1;
                                                //out.print(currenthr+"currenthr               \n");
                                            }
                                            count = 0;
                                            if (Double.parseDouble(rating_day1_1[x]) >= 4.5) {
                                                rating = 18;
                                            } else if (Double.parseDouble(rating_day1_1[x]) >= 4.0) {
                                                rating = 12;
                                            } else if (Double.parseDouble(rating_day1_1[x]) >= 3.6) {
                                                rating = 8;
                                            } else {
                                                rating = 6;
                                            }

                                            value[k] = value[k] + rating;
                                            //out.print(value[z]+"value[z]               \n");
                                            break;
                                        }

                                    }

                                    if (count == 10) {

                                        flag = 1;
                                    }

                                }
                            }

                        }
                    }
                }

                int top101[][] = new int[10][20];
                for (int b = 0; b < 10; b++) {
                    for (int c = 0; c < 20; c++) {
                        top101[b][c] = top10[b][c];
                    }

                }

                for (int i = 0; i < 1000; i++) {

                    for (int j = 0; j < 20; j++) {
                        trip[i][j] = 0;

                    }

                }

            //out.print("suyash");
            //slot 2
                startlat = slat2;
                startlong = slong2;
                endlat = elat2;
                endlong = elong2;
                starthr = s1;
                startmin = m1;
                flag = 0;
                currentlat = startlat;
                currentlong = startlong;
                lunch = 1;
                dinner = 1;
                et = et2;
                currentday = date2.charAt(0);
                int route;
                for (int k = 0; k < 1000; k++) {
                    value[k] = 0;

                    currenthr = starthr;
                    currentmin = startmin;
                    flag = 0;
                    currentlat = startlat;
                    currentlong = startlong;
                    lunch = 1;
                    dinner = 1;
                    y = 0;

                    if (k < 100) {
                        route = 0;

                    } else if (k < 200) {
                        route = 1;
                    } else if (k < 300) {
                        route = 2;
                    } else if (k < 400) {
                        route = 3;
                    } else if (k < 500) {
                        route = 4;
                    } else if (k < 600) {
                        route = 5;
                    } else if (k < 700) {
                        route = 6;
                    } else if (k < 800) {
                        route = 7;
                    } else if (k < 900) {
                        route = 8;
                    } else {
                        route = 9;
                    }

                    while (flag == 0) {
                        count = 0;
                        x = 0;

                        while (count < 10) {
                            count++;
                            // out.print(count+"count                 \n");
                            x = (int) (Math.random() * 1000) % day2;
                            // out.print(x+"x               \n");
                            if (currenthr >= 12 && currenthr <= 15 && lunch == 1) {
                                float a, b, c, d, diff1, diff2;

                                a = Float.parseFloat(currentlat);
                                //   out.print(a+"a               \n");
                                b = Float.parseFloat(currentlong);
                                //  out.print(b+"b               \n");
                                min = 999;
                                temp = 0;
                                // out.print(day1 +"day1");
                                //out.print(day1_f +"day1_f");
                                for (int g = day2; g < day2_f; g++) {
                                    flag3 = 0;
                                    for (int k1 = 0; k1 < y; k1++) {
                                        if (trip[k][k1] == g) {
                                            flag3 = 1;
                                            break;
                                        }
                                    }
                                    for (int k1 = 0; k1 < 20; k1++) {
                                        //                      out.print(id_day1_1[top10[route][k1]]+"__");
                                        //                    out.print(name_day1_1[top10[route][k1]]);
                                        //                  out.print(id_day2_1[x]+"__");
                                        //                out.print(name_day2_1[x]+"__");
                                        if (id_day1_1[top101[route][k1]].equals(id_day2_1[g])) {
                                            flag3 = 1;
                                            //out.print("hellooooooooooo");
                                            break;

                                        }
                                    }
                                    c = Float.parseFloat(lati_day2_1[g]);
                                    //  out.print(c+"c               \n");
                                    d = Float.parseFloat(longi_day2_1[g]);
                                    // out.print(d+"d               \n");
                                    diff1 = Math.abs(a - c);
                                    diff2 = Math.abs(b - d);
                                    diff1 = diff1 + diff2;
                                    // out.print(diff1+"diff1               \n");
                                    if (diff1 < min && flag3 == 0) {
                                        temp = g;
                                        //   out.print(temp+"temp               \n");
                                        min = diff1;
                                        //  out.print(min+ "min               \n");

                                    }
                                }
                                lunch = 0;
                                trip[k][y++] = temp;
                                //out.print(trip[z][y-1]+"trip[z][y-1]               \n");
                                timetaken = (int) time(lati_day2_1[temp], longi_day2_1[temp], currentlat, currentlong);
                                // out.print(name_day1_1[temp] +"resturant");
                                //out.print(timetaken+"timetaken               \n");
                                timetaken = timetaken + (int) Float.parseFloat(ts_day2_1[temp]) * 60;
                                //out.print(timetaken+"timetaken               \n");
                                currenthr += timetaken / 60;
                                //out.print(currenthr+"currenthr               \n");
                                currentmin += timetaken % 60;
                                //out.print(currentmin+"currentmin               \n");
                                if (currentmin >= 60) {
                                    currentmin = currentmin - 60;
                                    //  out.print(currentmin+"currentmin               \n");
                                    currenthr += 1;
                                    //out.print(currenthr+"currenthr               \n");
                                }
                                currentlat = lati_day2_1[temp];
                                //out.print(currentlat+"current long");
                                currentlong = longi_day2_1[temp];
                                //out.print(currentlong+" current long");
                            } else if (currenthr >= 19 && currenthr <= 22 && dinner == 1) {
                                float a, b, c, d, diff1, diff2;

                                a = Float.parseFloat(currentlat);
                                //   out.print(a+"a               \n");
                                b = Float.parseFloat(currentlong);
                                //  out.print(b+"b               \n");
                                min = 999;
                                temp = 0;
                                // out.print(day1 +"day1");
                                //out.print(day1_f +"day1_f");
                                for (int g = day2; g < day2_f; g++) {
                                    flag3 = 0;
                                    for (int k1 = 0; k1 < y; k1++) {
                                        if (trip[k][k1] == g) {
                                            flag3 = 1;
                                            break;
                                        }
                                    }
                                    for (int k1 = 0; k1 < 20; k1++) {
                                        //                      out.print(id_day1_1[top10[route][k1]]+"__");
                                        //                    out.print(name_day1_1[top10[route][k1]]);
                                        //                  out.print(id_day2_1[x]+"__");
                                        //                out.print(name_day2_1[x]+"__");
                                        if (id_day1_1[top101[route][k1]].equals(id_day2_1[g])) {
                                            flag3 = 1;
                                            //out.print("hellooooooooooo");
                                            break;

                                        }
                                    }
                                    c = Float.parseFloat(lati_day2_1[g]);
                                    //  out.print(c+"c               \n");
                                    d = Float.parseFloat(longi_day2_1[g]);
                                    // out.print(d+"d               \n");
                                    diff1 = Math.abs(a - c);
                                    diff2 = Math.abs(b - d);
                                    diff1 = diff1 + diff2;
                                    // out.print(diff1+"diff1               \n");
                                    if (diff1 < min && flag3 == 0) {
                                        temp = g;
                                        //   out.print(temp+"temp               \n");
                                        min = diff1;
                                        //  out.print(min+ "min               \n");

                                    }
                                }
                                dinner = 0;
                                trip[k][y++] = temp;
                                //out.print(trip[z][y-1]+"trip[z][y-1]               \n");
                                timetaken = (int) time(lati_day2_1[temp], longi_day2_1[temp], currentlat, currentlong);
                                // out.print(name_day1_1[temp] +"resturant");
                                //out.print(timetaken+"timetaken               \n");
                                timetaken = timetaken + (int) Float.parseFloat(ts_day2_1[temp]) * 60;
                                //out.print(timetaken+"timetaken               \n");
                                currenthr += timetaken / 60;
                                //out.print(currenthr+"currenthr               \n");
                                currentmin += timetaken % 60;
                                //out.print(currentmin+"currentmin               \n");
                                if (currentmin >= 60) {
                                    currentmin = currentmin - 60;
                                    //  out.print(currentmin+"currentmin               \n");
                                    currenthr += 1;
                                    //out.print(currenthr+"currenthr               \n");
                                }
                                currentlat = lati_day2_1[temp];
                                //out.print(currentlat+"current long");
                                currentlong = longi_day2_1[temp];
                                //out.print(currentlong+" current long");
                            } else {
                                flag2 = 0;
                                for (int k1 = 0; k1 < y; k1++) {
                                    if (trip[k][k1] == x) {
                                        flag2 = 1;
                                        break;
                                    }
                                }
                                for (int k1 = 0; k1 < 20; k1++) {
                                    //                      out.print(id_day1_1[top10[route][k1]]+"__");
                                    //                    out.print(name_day1_1[top10[route][k1]]);
                                    //                  out.print(id_day2_1[x]+"__");
                                    //                out.print(name_day2_1[x]+"__");
                                    if (id_day1_1[top101[route][k1]].equals(id_day2_1[x])) {
                                        flag2 = 1;
                                        //out.print("hellooooooooooo");
                                        break;

                                    }
                                }

                                if (flag2 == 0) {
                                    // out.print("bhadriiiiiiii");
                                    //  out.print(lati_day1_1[x] +longi_day1_1[x]+ currentlat+ currentlong+ ot1_day1_1[x]+ ot2_day1_1[x]+ ct1_day1_1[x]+ ct2_day1_1[x]+ts_day1_1[x]+ currenthr+ currentmin+ endlat+ endlong+et);
                                    if (isopen(currentday, days_day2_1[x], lati_day2_1[x], longi_day2_1[x], currentlat, currentlong, ot1_day2_1[x], ot2_day2_1[x], ct1_day2_1[x], ct2_day2_1[x], ts_day2_1[x], currenthr, currentmin, endlat, endlong, et)) {

                                        //  out.print(isopen(lati_day1_1[x], longi_day1_1[x], currentlat, currentlong, ot1_day1_1[x], ot2_day1_1[x], ct1_day1_1[x], ct2_day1_1[x], ts_day1_1[x], currenthr, currentmin, endlat, endlong, et));
                                        //      out.print("here");
                                        trip[k][y++] = x;
                                        //    out.print(trip[z][y-1]+"trip[z][y-1]               \n");
                                        //  out.print(name_day1_1[x]+" name place");
                                        timetaken = (int) time(lati_day2_1[x], longi_day2_1[x], currentlat, currentlong);
                                        currentlat = lati_day2_1[x];
                                        //out.print(currentlat+"currentlat               \n");
                                        currentlong = longi_day2_1[x];
                                        //out.print(currentlong+"currentlong               \n");

                                        //out.print(timetaken+"timetaken               \n");
                                        timetaken = timetaken + (int) (Double.parseDouble(ts_day2_1[x]) * 60);
                                        //out.print(timetaken+"timetaken               \n");
                                        currenthr += timetaken / 60;
                                        //out.print(currenthr+"currenthr               \n");
                                        currentmin += timetaken % 60;
                                        //out.print(currentmin+"currentmin               \n");
                                        if (currentmin >= 60) {
                                            currentmin = currentmin - 60;
                                            //  out.print(currentmin+"currentmin               \n");
                                            currenthr += 1;
                                            //out.print(currenthr+"currenthr               \n");
                                        }
                                        count = 0;
                                        if (Double.parseDouble(rating_day2_1[x]) >= 4.5) {
                                            rating = 18;
                                        } else if (Double.parseDouble(rating_day2_1[x]) >= 4.0) {
                                            rating = 12;
                                        } else if (Double.parseDouble(rating_day2_1[x]) >= 3.6) {
                                            rating = 8;
                                        } else {
                                            rating = 6;
                                        }

                                        value[k] = value[k] + rating;
                                        //out.print(value[z]+"value[z]               \n");
                                        break;
                                    }

                                }

                                if (count == 10) {

                                    flag = 1;
                                }

                            }
                        }

                    }
                }

                count1 = 0;
                int route1 = 0;
                while (count1 < 10) {
                    // out.print(count1);
                    count1++;
                    int ind, val, j, i;

                    for (i = 0; i < 10; i++) {
                        ind = 0;
                        val = 0;
                        for (j = i * 100; j < (i + 1) * 100; j++) {
                            if (value[j] > val) {
                                ind = j;
                                val = value[j];
                            }

                        }
                        valtop10[i] = value[ind];
                        value[ind] = 0;

                        for (int k = 0; k < 20; k++) {
                            top10[i][k] = trip[ind][k];
                        }

                    }

                    for (int ab = 0; ab < 1000; ab++) {

                        for (int bc = 0; bc < 20; bc++) {
                            trip[ab][bc] = 0;

                        }

                    }

                    for (i = 0; i < 10; i++) {
                        for (j = 0; j < 20; j++) {
                            //   out.print(name_day1_1[top10[i][j]]);
                            trip[i * 100][j] = top10[i][j];
                        }
                        value[i * 100] = valtop10[i];
                        //  out.print("\n");
                    }

                    for (int k = 0; k < 1000; k++) {
                        if (k % 100 == 0) {
                        } else {
                            value[k] = 0;
                            currenthr = starthr;
                            currentmin = startmin;
                            flag = 0;
                            currentlat = startlat;
                            currentlong = startlong;
                            lunch = 1;
                            dinner = 1;
                            y = 0;

                            if (k < 100) {
                                route = 0;

                            } else if (k < 200) {
                                route = 1;
                            } else if (k < 300) {
                                route = 2;
                            } else if (k < 400) {
                                route = 3;
                            } else if (k < 500) {
                                route = 4;
                            } else if (k < 600) {
                                route = 5;
                            } else if (k < 700) {
                                route = 6;
                            } else if (k < 800) {
                                route = 7;
                            } else if (k < 900) {
                                route = 8;
                            } else {
                                route = 9;
                            }
                            int try1 = 0;
                            while (try1 == 0) {
                                try1 = (int) (Math.random() * 1000) % 2;
                                trip[k][y] = top10[route][y];
                                if (top10[route][y] >= day2) {
                                    lunch = 0;
                                }
                                if (top10[route][y] >= day2 && lunch == 0) {
                                    dinner = 0;
                                }
                                timetaken = (int) time(lati_day2_1[top10[route][y]], longi_day2_1[top10[route][y]], currentlat, currentlong);
                                currentlat = lati_day2_1[top10[route][y]];
                                currentlong = longi_day2_1[top10[route][y]];
                                timetaken = timetaken + (int) (Double.parseDouble(ts_day2_1[top10[route][y]]) * 60);
                                //out.print(timetaken+"timetaken               \n");
                                currenthr += timetaken / 60;
                                //out.print(currenthr+"currenthr               \n");
                                currentmin += timetaken % 60;
                                //out.print(currentmin+"currentmin               \n");
                                if (currentmin >= 60) {
                                    currentmin = currentmin - 60;
                                    //  out.print(currentmin+"currentmin               \n");
                                    currenthr += 1;
                                    //out.print(currenthr+"currenthr               \n");
                                }

                                if (Double.parseDouble(rating_day2_1[top10[route][y]]) >= 4.5) {
                                    rating = 18;
                                } else if (Double.parseDouble(rating_day2_1[top10[route][y]]) >= 4.0) {
                                    rating = 12;
                                } else if (Double.parseDouble(rating_day2_1[top10[route][y]]) >= 3.6) {
                                    rating = 8;
                                } else {
                                    rating = 6;
                                }

                                value[k] = value[k] + rating;
                                y++;

                            }
                            while (flag == 0) {
                                count = 0;
                                x = 0;

                                while (count < 10) {
                                    count++;
                                    // out.print(count+"count                 \n");
                                    x = (int) (Math.random() * 1000) % day1;
                                    // out.print(x+"x               \n");
                                    if (currenthr >= 12 && currenthr <= 15 && lunch == 1) {

                                        float a, b, c, d, diff1, diff2;

                                        a = Float.parseFloat(currentlat);
                                        //   out.print(a+"a               \n");
                                        b = Float.parseFloat(currentlong);
                                        //  out.print(b+"b               \n");
                                        min = 999;
                                        temp = 0;
                                        // out.print(day1 +"day1");
                                        //out.print(day1_f +"day1_f");
                                        for (int g = day1; g < day1_f; g++) {
                                            flag3 = 0;
                                            for (int k1 = 0; k1 < y; k1++) {
                                                if (trip[k][k1] == g) {
                                                    flag3 = 1;
                                                    break;
                                                }
                                            }
                                            for (int k1 = 0; k1 < 20; k1++) {
                                                //                      out.print(id_day1_1[top10[route][k1]]+"__");
                                                //                    out.print(name_day1_1[top10[route][k1]]);
                                                //                  out.print(id_day2_1[x]+"__");
                                                //                out.print(name_day2_1[x]+"__");
                                                if (id_day1_1[top101[route][k1]].equals(id_day2_1[g])) {
                                                    flag3 = 1;
                                                    //out.print("hellooooooooooo");
                                                    break;

                                                }
                                            }
                                            c = Float.parseFloat(lati_day2_1[g]);
                                            //  out.print(c+"c               \n");
                                            d = Float.parseFloat(longi_day2_1[g]);
                                            // out.print(d+"d               \n");
                                            diff1 = Math.abs(a - c);
                                            diff2 = Math.abs(b - d);
                                            diff1 = diff1 + diff2;
                                            // out.print(diff1+"diff1               \n");
                                            if (diff1 < min && flag3 == 0) {
                                                temp = g;
                                                //   out.print(temp+"temp               \n");
                                                min = diff1;
                                                //  out.print(min+ "min               \n");

                                            }
                                        }
                                        lunch = 0;
                                        trip[k][y++] = temp;
                                        //out.print(trip[z][y-1]+"trip[z][y-1]               \n");
                                        timetaken = (int) time(lati_day2_1[temp], longi_day2_1[temp], currentlat, currentlong);
                                        // out.print(name_day1_1[temp] +"resturant");
                                        //out.print(timetaken+"timetaken               \n");
                                        timetaken = timetaken + (int) Float.parseFloat(ts_day2_1[temp]) * 60;
                                        //out.print(timetaken+"timetaken               \n");
                                        currenthr += timetaken / 60;
                                        //out.print(currenthr+"currenthr               \n");
                                        currentmin += timetaken % 60;
                                        //out.print(currentmin+"currentmin               \n");
                                        if (currentmin >= 60) {
                                            currentmin = currentmin - 60;
                                            //  out.print(currentmin+"currentmin               \n");
                                            currenthr += 1;
                                            //out.print(currenthr+"currenthr               \n");
                                        }
                                        currentlat = lati_day2_1[temp];
                                        //out.print(currentlat+"current long");
                                        currentlong = longi_day2_1[temp];
                                        //out.print(currentlong+" current long");
                                    } else if (currenthr >= 19 && currenthr <= 22 && dinner == 1) {
                                        float a, b, c, d, diff1, diff2;

                                        a = Float.parseFloat(currentlat);
                                        //   out.print(a+"a               \n");
                                        b = Float.parseFloat(currentlong);
                                        //  out.print(b+"b               \n");
                                        min = 999;
                                        temp = 0;
                                        // out.print(day1 +"day1");
                                        //out.print(day1_f +"day1_f");
                                        for (int g = day1; g < day1_f; g++) {
                                            flag3 = 0;
                                            for (int k1 = 0; k1 < y; k1++) {
                                                if (trip[k][k1] == g) {
                                                    flag3 = 1;
                                                    break;
                                                }
                                            }
                                            for (int k1 = 0; k1 < 20; k1++) {
                                                //                      out.print(id_day1_1[top10[route][k1]]+"__");
                                                //                    out.print(name_day1_1[top10[route][k1]]);
                                                //                  out.print(id_day2_1[x]+"__");
                                                //                out.print(name_day2_1[x]+"__");
                                                if (id_day1_1[top101[route][k1]].equals(id_day2_1[g])) {
                                                    flag3 = 1;
                                                    //out.print("hellooooooooooo");
                                                    break;

                                                }
                                            }
                                            c = Float.parseFloat(lati_day2_1[g]);
                                            //  out.print(c+"c               \n");
                                            d = Float.parseFloat(longi_day2_1[g]);
                                            // out.print(d+"d               \n");
                                            diff1 = Math.abs(a - c);
                                            diff2 = Math.abs(b - d);
                                            diff1 = diff1 + diff2;
                                            // out.print(diff1+"diff1               \n");
                                            if (diff1 < min && flag3 == 1) {
                                                temp = g;
                                                //   out.print(temp+"temp               \n");
                                                min = diff1;
                                                //  out.print(min+ "min               \n");

                                            }
                                        }
                                        dinner = 0;
                                        trip[k][y++] = temp;
                                        //out.print(trip[z][y-1]+"trip[z][y-1]               \n");
                                        timetaken = (int) time(lati_day2_1[temp], longi_day2_1[temp], currentlat, currentlong);
                                        // out.print(name_day1_1[temp] +"resturant");
                                        //out.print(timetaken+"timetaken               \n");
                                        timetaken = timetaken + (int) Float.parseFloat(ts_day2_1[temp]) * 60;
                                        //out.print(timetaken+"timetaken               \n");
                                        currenthr += timetaken / 60;
                                        //out.print(currenthr+"currenthr               \n");
                                        currentmin += timetaken % 60;
                                        //out.print(currentmin+"currentmin               \n");
                                        if (currentmin >= 60) {
                                            currentmin = currentmin - 60;
                                            //  out.print(currentmin+"currentmin               \n");
                                            currenthr += 1;
                                            //out.print(currenthr+"currenthr               \n");
                                        }
                                        currentlat = lati_day2_1[temp];
                                        //out.print(currentlat+"current long");
                                        currentlong = longi_day2_1[temp];
                                        //out.print(currentlong+" current long");
                                    } else {
                                        flag2 = 0;
                                        for (int k1 = 0; k1 < y; k1++) {
                                            if (trip[k][k1] == x) {
                                                flag2 = 1;
                                                break;
                                            }
                                        }
                                        for (int k1 = 0; k1 < 20; k1++) {
                                            //                      out.print(id_day1_1[top10[route][k1]]+"__");
                                            //                    out.print(name_day1_1[top10[route][k1]]);
                                            //                  out.print(id_day2_1[x]+"__");
                                            //                out.print(name_day2_1[x]+"__");
                                            if (id_day1_1[top101[route][k1]].equals(id_day2_1[x])) {
                                                flag2 = 1;
                                                //out.print("hellooooooooooo");
                                                break;

                                            }
                                        }
                                        if (flag2 == 0) {
                                            // out.print("bhadriiiiiiii");
                                            //  out.print(lati_day1_1[x] +longi_day1_1[x]+ currentlat+ currentlong+ ot1_day1_1[x]+ ot2_day1_1[x]+ ct1_day1_1[x]+ ct2_day1_1[x]+ts_day1_1[x]+ currenthr+ currentmin+ endlat+ endlong+et);
                                            if (isopen(currentday, days_day2_1[x], lati_day2_1[x], longi_day2_1[x], currentlat, currentlong, ot1_day2_1[x], ot2_day2_1[x], ct1_day2_1[x], ct2_day2_1[x], ts_day2_1[x], currenthr, currentmin, endlat, endlong, et)) {

                                                //  out.print(isopen(lati_day1_1[x], longi_day1_1[x], currentlat, currentlong, ot1_day1_1[x], ot2_day1_1[x], ct1_day1_1[x], ct2_day1_1[x], ts_day1_1[x], currenthr, currentmin, endlat, endlong, et));
                                                //      out.print("here");
                                                trip[k][y++] = x;
                                                //    out.print(trip[z][y-1]+"trip[z][y-1]               \n");
                                                //  out.print(name_day1_1[x]+" name place");
                                                timetaken = (int) time(lati_day2_1[x], longi_day2_1[x], currentlat, currentlong);
                                                currentlat = lati_day2_1[x];
                                                //out.print(currentlat+"currentlat               \n");
                                                currentlong = longi_day2_1[x];
                                                //out.print(currentlong+"currentlong               \n");

                                                //out.print(timetaken+"timetaken               \n");
                                                timetaken = timetaken + (int) (Double.parseDouble(ts_day2_1[x]) * 60);
                                                //out.print(timetaken+"timetaken               \n");
                                                currenthr += timetaken / 60;
                                                //out.print(currenthr+"currenthr               \n");
                                                currentmin += timetaken % 60;
                                                //out.print(currentmin+"currentmin               \n");
                                                if (currentmin >= 60) {
                                                    currentmin = currentmin - 60;
                                                    //  out.print(currentmin+"currentmin               \n");
                                                    currenthr += 1;
                                                    //out.print(currenthr+"currenthr               \n");
                                                }
                                                count = 0;
                                                if (Double.parseDouble(rating_day2_1[x]) >= 4.5) {
                                                    rating = 18;
                                                } else if (Double.parseDouble(rating_day2_1[x]) >= 4.0) {
                                                    rating = 12;
                                                } else if (Double.parseDouble(rating_day2_1[x]) >= 3.6) {
                                                    rating = 8;
                                                } else {
                                                    rating = 6;
                                                }

                                                value[k] = value[k] + rating;
                                                //out.print(value[z]+"value[z]               \n");
                                                break;
                                            }

                                        }

                                        if (count == 10) {

                                            flag = 1;
                                        }

                                    }
                                }

                            }
                        }
                    }
                }

                for (int b = 0; b < 10; b++) {
            %><h1>Itinerary <%= b + 1%></h1><%
                currenthr = s;
                currentmin = m;

                currentlat = slat1;
                currentlong = slong1;
                endlat = elat1;
                endlong = elong1;
                et = et1;
                currentday = date1.charAt(0);
                out.print(start_loc1);
                for (int c = 0; c < 20; c++) {
                    timetaken = (int) time(lati_day1_1[top101[b][c]], longi_day1_1[top101[b][c]], currentlat, currentlong);
                    currenthr += timetaken / 60;
                    currentmin += timetaken % 60;
                    if (currentmin >= 60) {
                        currentmin = currentmin - 60;
                        //  out.print(currentmin+"currentmin               \n");
                        currenthr += 1;
                        //out.print(currenthr+"currenthr               \n");
                    }
            %>

            <div style="height:50px; width:100%;">
                <%
                    out.print(currenthr);
                %>:
                <%
                    out.print(currentmin);
                    timetaken = (int) (Double.parseDouble(ts_day1_1[top101[b][c]]) * 60);
                    currenthr += timetaken / 60;
                    currentmin += timetaken % 60;
                    if (currentmin >= 60) {
                        currentmin = currentmin - 60;
                        currenthr += 1;
                    }
                    currentlat = lati_day1_1[top101[b][c]];
                    //out.print(currentlat+"currentlat               \n");
                    currentlong = longi_day1_1[top101[b][c]];
                %> -
                <%
                    out.print(currenthr);
                %>:
                <%
                    out.print(currentmin);
                    out.print("   ");
                %>
                <%
                    out.print(name_day1_1[top101[b][c]]);
                %>
                <%
                        if (!(isopen(currentday, days_day1_1[top101[b][c + 1]], lati_day1_1[top101[b][c + 1]], longi_day1_1[top101[b][c + 1]], currentlat, currentlong, ot1_day1_1[top101[b][c + 1]], ot2_day1_1[top101[b][c + 1]], ct1_day1_1[top101[b][c + 1]], ct2_day1_1[top101[b][c + 1]], ts_day1_1[top101[b][c + 1]], currenthr, currentmin, endlat, endlong, et))) {
                            break;
                        }

                    } 
timetaken = (int) time(endlat, endlong, currentlat, currentlong);
                                currenthr += timetaken / 60;
                                currentmin += timetaken % 60;
   if (currentmin >= 60) {
                                    currentmin = currentmin - 60;
                                    //  out.print(currentmin+"currentmin               \n");
                                    currenthr += 1;
                                    //out.print(currenthr+"currenthr               \n");
                                }
                                %> -
                <%
                    out.print(currenthr);
                %>:
                <%
                    out.print(currentmin);
                    out.print("   ");
                    out.print(end_loc1);
                %>
                <%



                %></div>
                <%                    currenthr = s1;
                    currentmin = m1;

                    currentlat = slat2;
                    currentlong = slong2;
                    et = et2;

                endlat = elat2;
                endlong = elong2;
                    currentday = date2.charAt(0);
                    out.print(start_loc2);
                    for (int c = 0; c < 20; c++) {
                        timetaken = (int) time(lati_day2_1[top10[b][c]], longi_day2_1[top10[b][c]], currentlat, currentlong);
                        currenthr += timetaken / 60;
                        currentmin += timetaken % 60;
                        if (currentmin >= 60) {
                            currentmin = currentmin - 60;
                            //  out.print(currentmin+"currentmin               \n");
                            currenthr += 1;
                            //out.print(currenthr+"currenthr               \n");
                        }
                %>


            <div style="height:50px; width:100%;">


                <%
                        out.print(currenthr + ":");
                        out.print(currentmin + "-");
                        timetaken = (int) (Double.parseDouble(ts_day2_1[top10[b][c]]) * 60);
                        currenthr += timetaken / 60;
                        currentmin += timetaken % 60;
                        if (currentmin >= 60) {
                            currentmin = currentmin - 60;
                            currenthr += 1;
                        }
                        out.print(currenthr + ":");
                        out.print(currentmin);
                        out.print("   ");
                        currentlat = lati_day2_1[top10[b][c]];
                        //out.print(currentlat+"currentlat               \n");
                        currentlong = longi_day2_1[top10[b][c]];
                        out.print(name_day2_1[top10[b][c]]);
                        if (!(isopen(currentday, days_day2_1[top10[b][c + 1]], lati_day2_1[top10[b][c + 1]], longi_day2_1[top10[b][c + 1]], currentlat, currentlong, ot1_day2_1[top10[b][c + 1]], ot2_day2_1[top10[b][c + 1]], ct1_day2_1[top10[b][c + 1]], ct2_day2_1[top10[b][c + 1]], ts_day2_1[top10[b][c + 1]], currenthr, currentmin, endlat, endlong, et))) {
                            break;
                        }

                    }
timetaken = (int) time(endlat, endlong, currentlat, currentlong);
                                currenthr += timetaken / 60;
                                currentmin += timetaken % 60;
   if (currentmin >= 60) {
                                    currentmin = currentmin - 60;
                                    //  out.print(currentmin+"currentmin               \n");
                                    currenthr += 1;
                                    //out.print(currenthr+"currenthr               \n");
                                }
                                %> -
                <%
                    out.print(currenthr);
                %>:
                <%
                    out.print(currentmin);
                    out.print("   ");
                    out.print(end_loc2);
                
                %>
            </div>

            <%
                }

            %>
        </div>
        <div id="editor"></div>
    <button id="btn">Generate PDF</button>
    </body>
</html>

<%!
    boolean isopen(int current_day, String days_day1_1, String lati_day1_1, String longi_day1_1, String currentlat, String currentlong, String ot1_day1_1, String ot2_day1_1, String ct1_day1_1, String ct2_day1_1, String ts_day1_1, int current_hr, int current_min, String endlat, String endlong, String et) {
        int currenthr = current_hr;
        int currentmin = current_min;
        int currentday = current_day;
        double timetaken = time(lati_day1_1, longi_day1_1, currentlat, currentlong);
        // out.println(timetaken); 
        int hrs = (int) (timetaken / 60);
        //System.out.println(hrs);
        int min = (int) (timetaken % 60);
        //System.out.println(min);
        currenthr += hrs;
        //System.out.println(currenthr);
        if (currentmin + min >= 60) {
            currenthr = currenthr + 1;
            currentmin = currentmin + min - 60;

        } else {
            currentmin += min;

        }
        int flag = 0;
        for (int a = 0; a < days_day1_1.length(); a++) {
            if (currentday == days_day1_1.charAt(a)) {
                flag = 1;
            }
        }
        //System.o1ut.println(currentmin);

        int time = (currenthr * 100) + currentmin;
        // System.out.println(time);
        int ot1 = Integer.parseInt(ot1_day1_1);
        int ot2 = Integer.parseInt(ot2_day1_1);
        int ct1 = Integer.parseInt(ct1_day1_1);
        int ct2 = Integer.parseInt(ct2_day1_1);
        if (((((time >= ot1)) && ((ct1 >= time))) || (((time >= ot2)) && ((ct2 >= time)))) && (flag == 1)) {
            hrs = ts_day1_1.charAt(0);
            hrs = hrs - 48;
            //   System.out.println(hrs);
            min = (int) (((Float.parseFloat(ts_day1_1) - hrs) * 60));
            //System.out.println(min);
            int timespent = hrs * 100 + min;
            //System.out.println(timespent);
            int newtimespentmin = (time % 100 + timespent % 100) % 60;
            //System.out.println(newtimespentmin);
            int newtimespenthrs = ((time % 100 + timespent % 100) / 60) + (time / 100) + (timespent / 100);
            // System.out.println(newtimespenthrs);
            int newtimetotal = newtimespenthrs * 100 + newtimespentmin;

            //System.out.println(newtimetotal);
            if ((((newtimetotal) >= ot1) && ((newtimetotal) <= ct1)) || (((newtimetotal) >= ot2) && ((newtimetotal) <= ct2))) {
                timetaken = time(lati_day1_1, longi_day1_1, endlat, endlong);
                //System.out.println(timetaken);
                newtimespentmin = (int) (newtimetotal % 100 + timetaken % 100) % 60;
                //System.out.println(newtimespentmin);
                newtimespenthrs = (int) ((newtimetotal % 100 + timetaken % 100) / 60 + newtimetotal / 100 + timetaken / 100);
                //System.out.println(newtimespenthrs);
                newtimetotal = newtimespenthrs * 100 + newtimespentmin;
                //System.out.println(newtimetotal);
                if ((newtimetotal <= Integer.parseInt(et))) {
                    return true;
                }

            }
        }
        return false;
    }

%>

<%--
Bean bean= new Bean();
out.println(nature1);
if(monuments1!=null)
{
    
    ArrayList list=bean.day1_1(1,1);
    out.print(monuments1);
    Iterator itr = list.iterator();
    while(itr.hasNext())
    {
        String data= String.pa(itr.next());     
    }

--%>
