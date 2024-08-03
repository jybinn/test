package ezentv.vo;

public class ContentsVO 
{
	private String contents_no;         // 컨텐츠번호
	private String thumfile_phyname;    // 썸네일 첨부팡일 논리명
	private String thumfile_fname;      // 썸네일 첨부파일 물리명
	private String tralier_link;        // 예고편
	private String title;               // 제목
	private String opendate;            // 출시일
	private String screen_info;         // 상영정보
	private String running_time;        // 상영시간
	private String nation;              // 국가
	private String story;               // 줄거리
	private String grade;               // 등급
	private String genre;               // 장르
	private String OTTaddr_neflix;      // 넷플릭스(OTT주소)
	private String OTTaddr_disney;      // 디즈니(OTT주소)
	private String OTTaddr_coupang;     // 쿠팡(OTT주소)
	private String OTTaddr_watcha;      // 왓챠(OTT주소)
	private String uploaddate;          // 업로드일자
	
	public ContentsVO() 
	{
		contents_no      = "";
		thumfile_phyname = "";
		thumfile_fname 	 = "";
		tralier_link     = "";
		title            = "";
		opendate         = "";
		screen_info      = "";
		running_time     = "";
		nation           = "";
		story            = "";
		grade            = "";
		genre            = "";
		OTTaddr_neflix   = "";
		OTTaddr_disney   = "";
		OTTaddr_coupang  = "";
		OTTaddr_watcha   = "";
		uploaddate       = "";
	}

	//getter
	public String getContents_no()      { return contents_no;      }
	public String getThumfile_phyname() { return thumfile_phyname; }
	public String getThumfile_fname()   { return thumfile_fname;   }
	public String getTralier_link()     { return tralier_link;     }
	public String getTitle()            { return title;            }
	public String getOpendate()         { return opendate;         }
	public String getScreen_info()      { return screen_info;      }
	public String getRunning_time()     { return running_time;     }
	public String getNation()           { return nation;           }
	public String getStory()            { return story;            }
	public String getGrade()            { return grade;            }
	public String getGenre()            { return genre;            }
	public String getOTTaddr_neflix()   { return OTTaddr_neflix;   }
	public String getOTTaddr_disney()   { return OTTaddr_disney;   }
	public String getOTTaddr_coupang()  { return OTTaddr_coupang;  }
	public String getOTTaddr_watcha()   { return OTTaddr_watcha;   }
	public String getUploaddate()       { return uploaddate;       }

	//setter
	public void setContents_no(String contents_no)           { this.contents_no = contents_no;           }
	public void setThumfile_phyname(String thumfile_phyname) { this.thumfile_phyname = thumfile_phyname; }
	public void setThumfile_fname(String thumfile_fname)     { this.thumfile_fname = thumfile_fname;     }
	public void setTralier_link(String tralier_link)         { this.tralier_link = tralier_link;         }
	public void setTitle(String title)                       { this.title = title;                       }
	public void setOpendate(String opendate) 				 { this.opendate = opendate;                 }
	public void setScreen_info(String screen_info)           { this.screen_info = screen_info;           }
	public void setRunning_time(String running_time)         { this.running_time = running_time;         }
	public void setNation(String nation)                     { this.nation = nation;                     }
	public void setStory(String story)                       { this.story = story;                       }
	public void setGrade(String grade)                       { this.grade = grade;                       }
	public void setGenre(String genre)                       { this.genre = genre;                       }
	public void setOTTaddr_neflix(String oTTaddr_neflix)     { OTTaddr_neflix = oTTaddr_neflix;          }
	public void setOTTaddr_disney(String oTTaddr_disney)     { OTTaddr_disney = oTTaddr_disney;          }
	public void setOTTaddr_coupang(String oTTaddr_coupang)   { OTTaddr_coupang = oTTaddr_coupang;        }
	public void setOTTaddr_watcha(String oTTaddr_watcha)     { OTTaddr_watcha = oTTaddr_watcha;          }
	public void setUploaddate(String uploaddate)             { this.uploaddate = uploaddate;             }
}
	
	
	
	