package live.abhinav;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns ={"/common" } )
public class CommonServlet extends HttpServlet {
    private static final long serialVersionUID = 2218168052197231866L ;
    @Override
    public void doGet (HttpServletRequest request , HttpServletResponse response){
        try {
            response.getWriter( ).write( "Common" ) ;
        } catch(IOException e) {
            e.printStackTrace( ) ;
        }
    }
}