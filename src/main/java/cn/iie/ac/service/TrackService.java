package cn.iie.ac.service;

import java.util.List;

import cn.iie.ac.entity.Track;


public interface TrackService {
	
	List<Track> searchTrack(int personid, String date, String flight, String source, String destination, String hotel);
	
}
