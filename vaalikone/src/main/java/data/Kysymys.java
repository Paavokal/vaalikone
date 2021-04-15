package data;



public class Kysymys {
	
	private int id;
	private String kysymys;
	
	public Kysymys() {
		// TODO Auto-generated constructor stub

	}
	
	public Kysymys(String id, String kysymys) {
		// TODO Auto-generated constructor stub
		setId(id);
		this.kysymys=kysymys;
	}
	public Kysymys(String id) {
		// TODO Auto-generated constructor stub
		setId(id);
	}
	
		
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setId(String id) {
		try {
			this.id = Integer.parseInt(id);
		}
		catch(NumberFormatException | NullPointerException e) {
			//Do nothing - the value of id won't be changed
		}
	}
	public String getKysymys() {
		return kysymys;
	}
	public void setKysymys(String kysymys) {
		this.kysymys = kysymys;
	}
	

}