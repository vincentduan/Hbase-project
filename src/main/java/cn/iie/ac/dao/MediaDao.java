package cn.iie.ac.dao;

import java.util.List;

import cn.iie.ac.entity.Media;


public interface MediaDao {
	
	List<Media> getMediaListByPersonID(int personid);
	
}
