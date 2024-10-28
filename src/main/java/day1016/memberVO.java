package day1016;

public class memberVO {
	private String id, pass, chk_pass, name, birth, tel, gender, 
		cellphone, email, email2, loc, addr1, addr2;
	private int zipcode;
	private String[] lang;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String[] getLang() {
		return lang;
	}
	public void setLang(String[] lang) {
		this.lang = lang;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getChk_pass() {
		return chk_pass;
	}
	public void setChk_pass(String chk_pass) {
		this.chk_pass = chk_pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getCellphone() {
		return cellphone;
	}
	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEmail2() {
		return email2;
	}
	public void setEmail2(String email2) {
		this.email2 = email2;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public int getZipcode() {
		return zipcode;
	}
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}
	@Override
	public String toString() {
		return "memberVO [id=" + id + ", pass=" + pass + ", chk_pass=" + chk_pass + ", name=" + name + ", birth="
				+ birth + ", tel=" + tel + ", cellphone=" + cellphone + ", email=" + email + ", email2=" + email2
				+ ", loc=" + loc + ", addr1=" + addr1 + ", addr2=" + addr2 + ", zipcode=" + zipcode + "]";
	}
	
	
	
}