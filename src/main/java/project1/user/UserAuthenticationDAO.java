package project1.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.co.sist.dao.DbConnection;

public class UserAuthenticationDAO {
	private static UserAuthenticationDAO uDAO;
	
	private UserAuthenticationDAO() {
		
	}
	
	public static UserAuthenticationDAO getInstance() {
		if(uDAO == null) {
			uDAO=new UserAuthenticationDAO();
			
		}//end if
		return uDAO;
	}//getInstance
	
	public void selectUserForLogin(String userId, String password) {
		
	}
	
	
	public int insertUser(UserVO uVO) throws SQLException {
		int rowCnt=0;
		
		Connection con=null;
		PreparedStatement pstmt=null;
		
		//1. JNDI사용객체 생성
			//2. DBCP에서 DataSource 얻기
			DbConnection dbCon=DbConnection.getInstance();
			try {
			//3. Connection 얻기
				con=dbCon.getConn("192.168.10.225", "project1", "tiger");
			//4. 쿼리문 생성객체 얻기
				StringBuilder insertUser=new StringBuilder();
				insertUser
				.append("insert into projectUser")
				.append("( user_id,password,name,email,phone,gender,zipcode,address_1,address_2,birth,security_question_id,security_answer) ")
				.append("values(?,?,?,?,?,?,?,?,?,?,?,?)");
				
				pstmt=con.prepareStatement(insertUser.toString());
				
			//5. 바인드 변수에 값 설정
				pstmt.setString(1, uVO.getUserId());
				pstmt.setString(2, uVO.getPassword());
				pstmt.setString(3, uVO.getName());
				pstmt.setString(4, uVO.getEmail());
				pstmt.setString(5, uVO.getPhone());
				pstmt.setString(6, uVO.getGender());
				pstmt.setInt(7, uVO.getZipcode());
				pstmt.setString(8, uVO.getAddress1());
				pstmt.setString(9, uVO.getAddress2());
				pstmt.setString(10, uVO.getBirth());
				pstmt.setString(11, uVO.getSecurityQuestion());
				pstmt.setString(12, uVO.getSecurityAnswer());
				
			//6. 쿼리문 수행 후 결과 얻기
				pstmt.executeUpdate();
				
			}finally {
			//7. 연결끊기
				dbCon.dbClose(null, pstmt, con);
			}
		
		return rowCnt;
	}//insertUser
	
	/**
	 * 아이디 중복 확인
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public boolean selectId(String id) throws SQLException{
		boolean flag=false;
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		DbConnection dbCon=DbConnection.getInstance();
		try {
			
			con=dbCon.getConn("192.168.10.225", "project1", "tiger");
			
			String selectId="select user_id from projectUser where user_id=?";
			
			pstmt=con.prepareStatement(selectId);
			
			pstmt.executeUpdate();
			
			rs=pstmt.executeQuery();
			
			flag=rs.next();
			
		}finally {
			dbCon.dbClose(rs, pstmt, con);
		}//end finally
		
		return flag;
	}//selectId
	
}//class
