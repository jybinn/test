// 회원정보 클래스
package ezentv.vo;

public class UserVO 
{
	private String user_no; 	// 회원 번호
	private String id; 			// 회원 아이디
	private String pw; 			// 비밀번호
	private String name; 		// 이름
	private String nickname; 	// 닉네임
	private String email; 		// 이메일
	private String joindate; 	// 가입일자
	private String isretire; 	// 탈퇴여부
	private String manager_yn; 	// 관리자여부
	
	public UserVO() 
	{
		this.user_no    =   "";
		this.id 		= 	"";
		this.pw 		=	"";
		this.name 		= 	"";
		this.nickname 	= 	"";
		this.email 		= 	"";
		this.joindate 	= 	"";
		this.isretire 	= 	"N";
		this.manager_yn =   "N";
	}
	
	// getter
	public String getUser_no() 		{ return user_no;	}
	public String getId() 			{ return id;		}
	public String getPw() 			{ return pw;		}
	public String getName() 		{ return name;		}
	public String getNickname() 	{ return nickname;	}
	public String getEmail() 		{ return email;		}
	public String getJoindate() 	{ return joindate;	}
	public String getIsretire() 	{ return isretire;	}
	public String getManager_yn() 	{ return manager_yn;}
	
	// setter
	public void setUser_no(String user_no) 		{ this.user_no 	 = 	user_no;	}
	public void setId(String id) 				{ this.id 		 = 	id;			}
	public void setPw(String pw) 				{ this.pw 		 = 	pw;			}
	public void setName(String name) 			{ this.name		 = 	name;		}
	public void setNickname(String nickname) 	{ this.nickname  = 	nickname;	}
	public void setEmail(String email) 			{ this.email 	 = 	email;		}
	public void setJoindate(String joindate) 	{ this.joindate	 = 	joindate;	}
	public void setIsretire(String isretire) 	{ this.isretire	 = 	isretire;	}
	public void setManager_yn(String manager_yn){ this.manager_yn= 	manager_yn;	}
	
	
}

