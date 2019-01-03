package transvision.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="formelements")
public class FormElements {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
	private int id;
	@Column(name = "name")
	private String name;
	@Column(name = "phnno")
	private String phnno;
	@Column(name = "email")
	private String email;
	@Column(name = "domain")
	private String domain;
	
	public FormElements(String name, String phnno, String email, String domain) {
		super();
		this.name = name;
		this.phnno = phnno;
		this.email = email;
		this.domain = domain;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhnno() {
		return phnno;
	}
	public void setPhnno(String phnno) {
		this.phnno = phnno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDomain() {
		return domain;
	}
	public void setDomain(String domain) {
		this.domain = domain;
	}
	@Override
	public String toString() {
		return "FormElements [name=" + name + ", phnno=" + phnno + ", email=" + email + "]";
	}
	public FormElements() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
