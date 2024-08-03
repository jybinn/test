package ezentv.dto;

import ezentv.dao.*;
import ezentv.vo.*;

public class ContentsDTO extends DBManager
{
	//게시물을 등록한다.
	public boolean Insert(ContentsVO vo)
	{
		this.DBOpen();
		
		String sql = "";

		/*
		sql  = "insert into contents(contents_no,thumfile_phyname,thumfile_fname,tralier_link,";
		sql	+= "title,opendate,screen_info,running_time,nation,story,grade,genre,";
		sql	+= "OTTaddr_neflix,OTTaddr_disney,OTTaddr_coupang,OTTaddr_watcha,uploaddate) ";
		sql += "values('" + vo.getContents_no() + "','" + vo.getThumfile_phyname() + "','" + vo.getThumfile_fname() + "','" + vo.getTralier_link()  + "','" + vo.getTitle() + "','" + vo.getOpendate() + "',";
		sql	+= "'" + vo.getScreen_info() + "','" + vo.getRunning_time() + "','" + vo.getNation() + "','" + vo.getStory() + "','" + vo.getGrade() + "','" + vo.getGenre() + "','" + vo.getOTTaddr_neflix() + "',";
		sql	+= "'" + vo.getOTTaddr_disney() + "','" + vo.getOTTaddr_coupang() + "','" + vo.getOTTaddr_watcha() + "','" + vo.getUploaddate()+ "')";
		*/
		sql += "insert into contents(thumfile_phyname,thumfile_fname,tralier_link,";
		sql	+= "title,opendate,screen_info,running_time,nation,story,grade,genre,";
		sql	+= "OTTaddr_neflix,OTTaddr_disney,OTTaddr_coupang,OTTaddr_watcha) ";
		sql += "values(";
		sql += "'" + vo.getThumfile_phyname() + "',";
		sql += "'" + vo.getThumfile_fname()   + "',";
		sql += "'" + vo.getTralier_link()     + "',";
		sql += "'" + vo.getTitle()            + "',";
		sql += "'" + vo.getOpendate()         + "',";
		sql	+= "'" + vo.getScreen_info()      + "',";
		sql += "'" + vo.getRunning_time()     + "',";
		sql += "'" + vo.getNation()           + "',";
		sql += "'" + vo.getStory()            + "',";
		sql += "'" + vo.getGrade()            + "',";
		sql += "'" + vo.getGenre()            + "',";
		sql += "'" + vo.getOTTaddr_neflix()   + "',";
		sql	+= "'" + vo.getOTTaddr_disney()   + "',";
		sql += "'" + vo.getOTTaddr_coupang()  + "',";
		sql += "'" + vo.getOTTaddr_watcha()   + "' ";
		sql += ")";		
		
		this.RunCommand(sql);

		//등록된 게시물 번호를 얻는다.
		sql = "select last_insert_id() as no ";
		this.RunSelect(sql);
		this.GetNext();
		vo.setContents_no(this.GetValue("no"));
		
		this.DBClose();
		return true;		
	}
	
	public ContentsVO Read(String no) {
		
		String sql = "select * ";
//		+ "thumfile_phyname,"
//		+ "thumfile_fname,"
//		+ "tralier_link,"
//		+ "title,"
//		+ "opendate,"
//		+ "screen_info,"
//		+ "running_time,"
//		+ "nation,"
//		+ "story,"
//		+ "grade,"
//		+ "genre,"
//		+ "OTTaddr_neflix,"
//		+ "OTTaddr_disney,"
//		+ "OTTaddr_coupang,"
//		+ "OTTaddr_watcha";
		sql += "from contents where contents_no="+no;
		
		this.DBOpen();
		this.RunSelect(sql);
		this.GetNext();
		
		ContentsVO vo = new ContentsVO(); 
				
		vo.setThumfile_phyname  (this.GetValue("thumfile_phyname"));
		vo.setThumfile_fname    (this.GetValue("thumfile_fname"));
		vo.setTralier_link      (this.GetValue("tralier_link"));
		vo.setTitle             (this.GetValue("title"));
		vo.setOpendate          (this.GetValue("opendate"));
		vo.setScreen_info       (this.GetValue("screen_info"));
		vo.setRunning_time      (this.GetValue("running_time"));
		vo.setNation            (this.GetValue("nation"));
		vo.setStory             (this.GetValue("story"));
		vo.setGrade             (this.GetValue("grade"));
		vo.setGenre             (this.GetValue("genre"));
		vo.setOTTaddr_neflix    (this.GetValue("OTTaddr_neflix"));
		vo.setOTTaddr_disney    (this.GetValue("OTTaddr_disney"));
		vo.setOTTaddr_coupang   (this.GetValue("OTTaddr_coupang"));
		vo.setOTTaddr_watcha    (this.GetValue("OTTaddr_watcha"));
		
		this.DBClose();
		return vo;
	}

}
