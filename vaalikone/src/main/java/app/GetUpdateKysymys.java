package app;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.KysymysDao;
import data.Kysymys;

/**
 * Servlet implementation class ReadToUpdate
 */
@WebServlet("/getupdate")
public class GetUpdateKysymys extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private KysymysDao kysymysdao;
	
	public void init() {
		kysymysdao = new KysymysDao();
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetUpdateKysymys() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		Kysymys f=null;
		if (kysymysdao!=null) {
			f=kysymysdao.readKysymys(id);
		}
		request.setAttribute("kysymys", f);
		
		RequestDispatcher rd=request.getRequestDispatcher("/admin/editkysymys.jsp");
		rd.forward(request, response);
	}
}