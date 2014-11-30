import javax.servlet.*;
import javax.servlet.http.*;

import java.io.*;
import java.util.Enumeration;
import java.math.*;

/**
 * Created by Lera on 11/30/2014.
 */
public class PostParametersServlet extends HttpServlet {
    private double a,b,c;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("Answer:");

        //get parameters name
        Enumeration e = request.getParameterNames();

        while (e.hasMoreElements()){
            String pname = (String)e.nextElement();
            String pvalue = request.getParameter(pname);

            try {
                if(pvalue.isEmpty()){
                   pvalue="0";
                }

                Double par = Double.parseDouble(pvalue);

                if(pname.equals("a")){
                    a = par;
                    out.println(par+"*x^2 + ");
                }
                if(pname.equals("b")){
                    b = par;
                    out.println(par+"*x + ");
                }
                if(pname.equals("c")){
                    c = par;
                    out.println(par+" = 0");
                }
            }
            catch (Exception exp){
                out.println("Parameter "+pvalue+" is not a number!");
                return;
            }

        }


        double d = (b * b) - (4 * a * c);
        double x1,x2;
        out.println("D = " + d);

        if(d < 0)
            out.println("Not answer!");
        else {
            if (d == 0) {
                x1 = (-b) / (2 * a);
                out.println("x = " + x1);
            }
            else {
                x1 = (-b + Math.sqrt(d)) / (2 * a);
                x2 = (-b - Math.sqrt(d)) / (2 * a);
                if (x1 == x2) {
                    out.println("x1 = x2 " + x1);
                } else
                    out.println("x1 =  " + x1 + ";x2 = " + x2);
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
