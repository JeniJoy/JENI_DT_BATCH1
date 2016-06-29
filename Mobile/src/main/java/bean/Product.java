package bean;


public class Product {
	
	
	
	int pid;
	
	 
	String pname;
	 
	
	String pdesc;
	 
	String price;
	
	public Product() {
		super();
	}
	
	public Product(int pid, String pname, String pdesc, String price) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pdesc = pdesc;
		this.price = price;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPdesc() {
		return pdesc;
	}

	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
	
}
