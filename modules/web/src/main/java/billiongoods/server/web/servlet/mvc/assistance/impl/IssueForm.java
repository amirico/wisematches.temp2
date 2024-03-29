package billiongoods.server.web.servlet.mvc.assistance.impl;

/**
 * @author Sergey Klimenko (smklimenko@gmail.com)
 */
public class IssueForm {
	private String name;
	private String email;
	private String message;

	public IssueForm() {
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "IssueForm{" +
				"name='" + name + '\'' +
				", email='" + email + '\'' +
				", message='" + message + '\'' +
				'}';
	}
}
