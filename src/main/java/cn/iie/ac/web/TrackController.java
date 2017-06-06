package cn.iie.ac.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.iie.ac.entity.Track;
import cn.iie.ac.service.TrackService;

@Controller
@RequestMapping("/track")
public class TrackController {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private TrackService trackService;
	
	@RequestMapping(value="/list", method = RequestMethod.POST )
	@ResponseBody
	public List<Track> track_list(HttpServletRequest request, Model model){
		int personid = Integer.parseInt(request.getParameter("personid"));
		String date = request.getParameter("date");
		String flight = request.getParameter("flight");
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		String hotel = request.getParameter("hotel");
		List<Track> list = trackService.searchTrack(personid, date, flight, source, destination, hotel);
		return list;
	}
}
