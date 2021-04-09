package app;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.KysymysDao;
import data.Kysymys;

/**
 * Servlet implementation class ShowFish
 */
@WebServlet("/naytakysymykset")
public class NaytaKysymykset extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private KysymysDao kysymysdao = null;
	
	@Override
	public void init() {
		kysymysdao = new KysymysDao();
	}
       
    public NaytaKysymykset() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Kysymys> list=null;
		if (kysymysdao!=null) {
			list=kysymysdao.readAllKysymys();
		}
		else {
			System.out.println("No connection to database");
		}
		request.setAttribute("kysymyslist", list);
		
		RequestDispatcher rd=request.getRequestDispatcher("/jsp/kysymykset.jsp");
		rd.forward(request, response);
	}
}
