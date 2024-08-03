// 회원정보 관리 클래스

package ezentv.dto;
import ezentv.vo.*;
import ezentv.dao.*;

public class UserDTO extends DBManager
{
	// 아이디 중복검사
	// 리턴값 : true - 중복된 ID, false - 중복이 안된 ID
	public boolean CheckID(String id)
	{
		String sql = "";
		this.DBOpen();
		sql = "select id from user where id = '" + this._R(id) + "' ";
		this.RunSelect(sql);
		if(this.GetNext() == true)
		{
			// 아이디가 있음
			this.DBClose();
			System.out.println("중복된 아이디");
			return true;
		}
		// 아이디가 없음
		this.DBClose();
		System.out.println("아이디 생성완료");
		return false;
	}
	
	public boolean Join(UserVO vo)
	{
		// 중복된 아이디인지 검사한다.
		if(CheckID(vo.getId()) == true)
		{
			return false;
		}
		
		this.DBOpen();
		
		//회원번호를 Insert 한다.
		String sql = "";
		sql = "insert into user (id,pw,name,nickname,email) ";
		sql += "values (";
		sql += "'" + _R(vo.getId()) + "'," ;
		sql += "md5('" + _R(vo.getPw()) + "')," ;
		sql += "'" + _R(vo.getName()) + "'," ;
		sql += "'" + _R(vo.getNickname()) + "'," ;
		sql += "'" + _R(vo.getEmail()) + "'" ;
		sql += ") ";
		this.RunCommand(sql);
		
		this.DBClose();
		return true;
		
	}
	
	// 회원 로그인 처리
	public UserVO Login(String id, String pw)
	{
		String sql = "";
		this.DBOpen();
		sql = "select id, name, nickname, email, manager_yn";
		sql += "from user ";
		sql += "where id = '" + _R(id) + "' and pw = md5('" + _R(pw) + "') ";
		
		// 탈퇴회원은 제외
		sql += "and isretire = 'N' ";
		this.RunSelect(sql);
		if(this.GetNext() == false)
		{
			// 해당 회원 정보가 없음
			this.DBClose();
			return null;
		}
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setName(this.GetValue("name"));
		vo.setNickname(this.GetValue("nickname"));
		vo.setEmail(this.GetValue("email"));
		this.DBClose();
		return vo;			
		
	}
	
}
