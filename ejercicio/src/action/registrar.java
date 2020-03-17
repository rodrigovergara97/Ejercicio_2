package action;

import com.opensymphony.xwork2.ActionSupport;

import utils.User;

public class registrar extends ActionSupport {
	private String name;
	private String lt_name;
	private String email;
	private String password;
	
	public String execute() throws Exception
	{
		int rec=User.register(this);
		if(rec>0)
		{
			return"Success";
		}
		else
		{
			return "error";
		}
	}
	public void Validate()
	{
		if(name.length()==0||!name.matches("\"^[a-zA-Z]*$\""))
		{
			   addFieldError("name","error");
		}
		else
		{
			addFieldError("name","error");
		}
		
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	public String getLt_name() {
		return lt_name;
	}
	public void setLt_name(String lt_name) {
		this.lt_name = lt_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
