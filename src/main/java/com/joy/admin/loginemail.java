package com.joy.admin;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



public class loginemail extends HttpServlet {


    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        String type = req.getParameter("reqtype");
        if(type=="login"){
        String username = req.getParameter("usernm");
        String pwd = req.getParameter("pwd");

            if(username.equals("sai") && pwd.equals("joy")){
                Communication cm = new Communication();
              String resp =   cm.sendEmail();
              if(resp.equals("1")){
                  res.getWriter().print("Mail Sent");
              }else{
                  res.getWriter().print("Mail sent failed "+resp);
              }
            }else{
                res.getWriter().print("Username or Password not matched, Please try Again...");
            }

        } else if (type=="forgotpwd") {
            Communication cm = new Communication();
            String resp =   cm.sendEmail();

        }
        else{
            System.out.println("tata Bye Bye...");
        }
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.getWriter().println("do post");
    }


}
