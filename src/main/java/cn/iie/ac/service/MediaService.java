package cn.iie.ac.service;

import java.util.List;

import cn.iie.ac.entity.Media;


public interface MediaService {
	List<Media> getMediaListByPersonID(int personid);
}
