package com.ahsan.Employees.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.boot.web.reactive.filter.OrderedHiddenHttpMethodFilter;
import org.springframework.context.annotation.Bean;
import org.springframework.data.rest.webmvc.ResourceNotFoundException;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.filter.HiddenHttpMethodFilter;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.ahsan.Employees.Dao.EmployeeDao;
import com.ahsan.Employees.Model.Employees;

@RestController
//@RequestMapping("/")
public class EmployeesController {
	
	@Autowired
	EmployeeDao repo;
	
	
	
	
	
	@RequestMapping("/")
	public ModelAndView viewHome(Model model) {
		//List<Employees> list=repo.findAll();
		
		
		ModelAndView view= new ModelAndView("Home.jsp");
		model.addAttribute("users", repo.findAll());
		return view;
	}
	
	
	
	@RequestMapping("/NewEmployee")
	public ModelAndView viewHomes(Model model) {
		//List<Employees> list=repo.findAll();
		
		
		ModelAndView view= new ModelAndView("NewEmployee.jsp");
		//model.addAttribute("users", repo.findAll());
		return view;
	}
	
	@RequestMapping("/DeleteEmployees/{id}")
	public RedirectView viewHomes1( @PathVariable("id") Integer id) {
		
		//Employees employee= repo.getOne(id);
		repo.deleteById(id);
	//	ModelAndView view= new ModelAndView("Home.jsp");
		//return view;
		
		//return new ModelAndView("Home.jsp");
		//return "redirect:/Home.jsp";
		return new RedirectView("/");
	}
	
	@RequestMapping("/UpdateEmployee/{id}")
	@ResponseBody
	public ModelAndView viewHomes12( @PathVariable("id") Integer id, Model model) {
		
		//Employees employee= repo.getOne(id);
		//repo.deleteById(id);
		repo.findById(id);
		Optional<Employees> location=repo.findById(id);
		ModelAndView view= new ModelAndView("/UpdateEmployee.jsp");
		//model.addAttribute("users", location);
		//view.addObject("users",repo.findById(id));
	//model.addAttribute("users",repo.findById(id));
	//	model.addAttribute("users", location);
	//System.out.println("yessir" +repo.findById(id));
	if(location.isPresent()) {
			System.out.println("yes it is present"+ location);
			model.addAttribute("users", location.get());
		}
		else {
		System.out.println("sorry");
		}
		return view;
		
	}
	
	

	
	
	
	
	//@GetMapping("/Home")
	//public List<Employees> viewHome() {
	//return repo.findAll();
	//}
	
	
	
//	@GetMapping("/")
//	public ModelAndView getEmployee() {
//		
//		ModelAndView view= new ModelAndView();
//		
//		view.setViewName("display.jsp");
//		view.addObject("find" , repo.findAll());
//		
//		return view;
//	}
	
	

	
	@PostMapping("/AddEmployee")
	public ModelAndView AddEmployee(@ModelAttribute Employees employee) {
		 repo.save(employee);
		 
		ModelAndView view= new ModelAndView("Home.jsp");
		view.addObject("users", repo.findAll());
		return view;
		//view.setViewName("Home.jsp");
		//return new ModelAndView("Home.jsp");

		//return "redirect:/Home.jsp";
}

	@RequestMapping(method = RequestMethod.PUT, value ="/SaveUpdateEmployee/{id}")

	public RedirectView UpdateEmployee(@PathVariable("id") Integer id, @ModelAttribute Employees employeedetails) {
		 // @RequestBody not working so i m using @ModelAttribute
	//repo.save(employee);
		 
		//ModelAndView view= new ModelAndView("/");
	
	//	view.addObject("users", repo.findAll());
	//	return view;
		//view.setViewName("Home.jsp");
		//return new ModelAndView("Home.jsp");

		//return "redirect:/Home.jsp";
		
		Employees employe=repo.findById(id)
	.orElseThrow(() -> new ResourceNotFoundException("Employee not found for this id :: " + id));
		
	employe.setEmail(employeedetails.Email);
	employe.setFirstName(employeedetails.FirstName);
	employe.setLastName(employeedetails.LastName);

	
	 
	 repo.save(employe);
	 
		return new RedirectView("/");
	
	


}
	
	



}

