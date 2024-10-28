package kr.co.sist.user.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.co.sist.dao.DbConnection;

public class MemberDAO {

	private static MemberDAO mDAO;

	private MemberDAO() {

	}

	// singleton 패턴
	public static MemberDAO getInstance() {
		if (mDAO == null) {
			mDAO = new MemberDAO();

		}
		return mDAO;

	}// getInstance

	/**
	 * 아이디를 입력받아서 DB에서 검색하여 아이디가 존재하면 True, 그렇지 않으면 False 반환
	 * 
	 * @param id 중복검사할 아이디
	 * @return 존재-true, false
	 * @throws SQLException
	 */
	public boolean selectID(String id) throws SQLException {

		boolean resultFlag = false;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		// 1. JNDI 사용 객체 생성
		// 2. DBCP에서 DataSource 얻기
		DbConnection dbCon = DbConnection.getInstance();
		try {

			// 3. Connection 얻기
			con = dbCon.getConn();

			// 4. 쿼리문 생성 객체 얻기
			String selectID = "select id from web_member where id=?";
			pstmt = con.prepareStatement(selectID);
			// 5. 바인드에 변수 값 설정
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();
			// 6. 쿼리문 수행 후 결과얻기

			resultFlag = rs.next();

		} finally {

			// 7. 연결끊기
			dbCon.dbClose(rs, pstmt, con);

		}

		return resultFlag;
	}// selectID
	
	public void insertWebMember( WebMemberVO wmVO) throws SQLException{
		
		Connection con=null;
		PreparedStatement pstmt=null;
		//1. JNDI사용객체 생성
		//2. DBCP에서 DataSource 얻기
		DbConnection dbCon=DbConnection.getInstance();
		try {
		//3. Connection 얻기
			con=dbCon.getConn();
		//4. 쿼리문 생성객체 얻기
			StringBuilder insertWebMember=new StringBuilder();
			insertWebMember
			.append("insert into web_member")
			.append("(id,pass,name,birth,tel,tel_flag,email,gender,location,zipcode,addr,addr2,ip)")
			.append("values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			pstmt=con.prepareStatement(insertWebMember.toString());
			
		//5. 바인드 변수에 값 설정
			pstmt.setString(1, wmVO.getId());
			pstmt.setString(2, wmVO.getPass());
			pstmt.setString(3, wmVO.getName());
			pstmt.setString(4, wmVO.getBirth());
			pstmt.setString(5, wmVO.getCellphone());
			pstmt.setString(6, wmVO.getSave());
			pstmt.setString(7, wmVO.getEmail());
			pstmt.setString(8, wmVO.getGender());
			pstmt.setString(9, wmVO.getLocation());
			pstmt.setString(10, wmVO.getZipcode());
			pstmt.setString(11, wmVO.getAddr1());
			pstmt.setString(12, wmVO.getAddr2());
			pstmt.setString(13, wmVO.getIp());
		//6. 쿼리문 수행 후 결과 얻기
			pstmt.executeUpdate();
			
			if(wmVO.getLang() != null) {
				insertLang(wmVO);//관심언어 DB추가				
			}//end if
		}finally {
		//7. 연결끊기
			dbCon.dbClose(null, pstmt, con);
		}
		
	}//insertWebMember
	
	public int insertLang( WebMemberVO wmVO) throws SQLException{
		int cntLang=0;
		
		Connection con=null;
		PreparedStatement pstmt=null;
		//1. JNDI사용객체 생성
		//2. DBCP에서 DataSource 얻기
		DbConnection dbCon=DbConnection.getInstance();
		try {
		//3. Connection 얻기
			con=dbCon.getConn();
		//4. 쿼리문 생성객체 얻기
			String insertLang
			="insert into web_member_lang(id, lang)values(?,?)";
			pstmt=con.prepareStatement(insertLang);
			
			for(String lang : wmVO.getLang()) {
			//5. 바인드 변수에 값 설정
				pstmt.setString(1, wmVO.getId());
				pstmt.setString(2, lang);
				
			//6. 쿼리문 수행 후 결과 얻기
				cntLang += pstmt.executeUpdate();
				
			}
		}finally {
		//7. 연결끊기
			dbCon.dbClose(null, pstmt, con);
		}
		
		return cntLang;
	}//insertLang
	

}
