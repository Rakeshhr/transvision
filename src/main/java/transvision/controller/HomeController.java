package transvision.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import transvision.entity.FormElements;
import transvision.service.FormService;
@Controller
public class HomeController {
	@Autowired
	FormService ser;
	
	@RequestMapping(value = "/home", method = RequestMethod.GET) 
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView("home", "home", new FormElements());
		mv.addObject("FORMLIST", ser.getAllStore());
		return mv;		
	}

	@RequestMapping(value = "/addform", method = RequestMethod.POST)
	public String addform(@RequestParam("user") String user,@RequestParam("mobile") String mobile,@RequestParam("email") String email,@RequestParam("domain") String domain)
	{
		FormElements ele = new FormElements(user, mobile, email, domain);
		ser.createform(ele);
		return "home";
	}
	

}
