package cn.iie.ac.web;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.iie.ac.entity.Person;
import cn.iie.ac.entity.Track;
import cn.iie.ac.service.PersonService;
import cn.iie.ac.service.TrackService;



@Controller
@RequestMapping("/person")
public class PersonController {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private PersonService personService;
	@Autowired
	private TrackService trackService;
	
	@RequestMapping(value="list", method = RequestMethod.GET)
	public String list(Model model){
		List<Person> list = personService.getPersonList();
		System.out.println(list.get(0));
		model.addAttribute("list", list);
		return "list";
	}
	
	@RequestMapping(value="/{id}/detail", method = RequestMethod.GET)
	public String detail(@PathVariable("id") int id, Model model){
		id = 3;
		Person person = personService.getById(id);
		System.out.println(person);
		model.addAttribute(person);
		List<Track> tracks = trackService.searchTrack(id, null, null, null, null, null);
		List<String> list_hotel = new ArrayList<>();
		for (Track track : tracks) {
			if(!list_hotel.contains(track.getHotel())){
				list_hotel.add(track.getHotel());
			}
		}
		model.addAttribute("list_hotel", list_hotel);
		
		return "detail";
	}
	
	@RequestMapping(value="/{id}/media")
	public List<Track> track_list(@PathVariable("id") int id, Model model){
		return null;
	}
	
}
