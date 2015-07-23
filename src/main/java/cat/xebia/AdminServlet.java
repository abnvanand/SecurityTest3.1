package cat.xebia; /**
 * Created by abhin on 7/20/2015.
 */
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns ={"/admin" } )
public class AdminServlet extends HttpServlet {
    @Override
    public void doGet (HttpServletRequest request , HttpServletResponse response){
        try {
            response.getWriter( ).write( "This is accessible to ADMIN only" ) ;
        } catch(IOException e) {
            e.printStackTrace( ) ;
        }
    }
}