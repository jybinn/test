// ȸ������ ���� Ŭ����

package ezentv.dto;
import ezentv.vo.*;
import ezentv.dao.*;

public class UserDTO extends DBManager
{
	// ���̵� �ߺ��˻�
	// ���ϰ� : true - �ߺ��� ID, false - �ߺ��� �ȵ� ID
	public boolean CheckID(String id)
	{
		String sql = "";
		this.DBOpen();
		sql = "select id from user where id = '" + this._R(id) + "' ";
		this.RunSelect(sql);
		if(this.GetNext() == true)
		{
			// ���̵� ����
			this.DBClose();
			System.out.println("�ߺ��� ���̵�");
			return true;
		}
		// ���̵� ����
		this.DBClose();
		System.out.println("���̵� �����Ϸ�");
		return false;
	}
	
	public boolean Join(UserVO vo)
	{
		// �ߺ��� ���̵����� �˻��Ѵ�.
		if(CheckID(vo.getId()) == true)
		{
			return false;
		}
		
		this.DBOpen();
		
		//ȸ����ȣ�� Insert �Ѵ�.
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
	
	// ȸ�� �α��� ó��
	public UserVO Login(String id, String pw)
	{
		String sql = "";
		this.DBOpen();
		sql = "select id, name, nickname, email, manager_yn";
		sql += "from user ";
		sql += "where id = '" + _R(id) + "' and pw = md5('" + _R(pw) + "') ";
		
		// Ż��ȸ���� ����
		sql += "and isretire = 'N' ";
		this.RunSelect(sql);
		if(this.GetNext() == false)
		{
			// �ش� ȸ�� ������ ����
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
