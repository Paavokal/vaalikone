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

@WebServlet(
    name = "Update",
    urlPatterns = {"/update"}
)
public class Update extends HttpServlet {
	private KysymysDao kysymysdao;
	
	public void init() {
		kysymysdao=new KysymysDao();
	}
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
	     throws IOException {
		response.sendRedirect("login.jsp");
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
	     throws IOException, ServletException {
		String id=request.getParameter("id");
		String kysymys=request.getParameter("kysymys");
		
		Kysymys f=new Kysymys(id, kysymys);
		
		ArrayList<Kysymys> list=null;
		if (kysymysdao!=null) {
			list=kysymysdao.updateKysymys(f);
		}
		
		request.setAttribute("kysymyslist", list);
		RequestDispatcher rd=request.getRequestDispatcher("/admin/kysymykset.jsp");
		rd.forward(request, response);
	}
}