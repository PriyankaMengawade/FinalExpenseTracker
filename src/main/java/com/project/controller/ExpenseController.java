package com.project.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.model.Expense;
import com.project.repository.ExpenseRepo;

@Controller
public class ExpenseController
{
	@Autowired
	ExpenseRepo erepo;
	
	@RequestMapping("/")
	public String welcome()
	{
		return "welcome.jsp";
	}
	
	@RequestMapping("/registerpage")
    public String registerPage(@ModelAttribute Expense ob) 
    {
		erepo.save(ob);
        return "Register.jsp";
    }
	
	@GetMapping("/loginpage")
	public String loginpage(Model mm)
	{
		mm.addAttribute(mm);
		return "index.jsp";
	}
	
	 @PostMapping("/processLogin")
	    public String processLogin(@RequestParam String email, @RequestParam String password, Model model) 
	    {
	        Expense aa = erepo.findByEmail(email);
	        
	        if (aa != null && aa.getEmail().equalsIgnoreCase(email) && aa.getPassword().equals(password)) 
	        {
	        	model.addAttribute("modelName", aa.getName());
	            return "AddExpense.jsp";  
	        } 
	        else
	        {
	            return "Register.jsp";
	        }
	    }
	 
	 @RequestMapping("/addexpense")
	 public String add(@ModelAttribute Expense ob)
	 {
		 erepo.save(ob);
		 return "AddExpense.jsp";
	 }
	 
	 @RequestMapping("/fetch")
		public String datafetch(Model data)
		{
			List<Expense> al=erepo.findAll();
			data.addAttribute("data",al);
			return "DataFetch.jsp";
		}
	 
	 @RequestMapping("/search")
		public String search(@RequestParam String description, Model m)
		{
		    List<Expense> ob = erepo.findByDescription(description);
		    
		    if (ob != null && !ob.isEmpty())
		    {
		        m.addAttribute("data", ob);
		        return "search.jsp";
		    } 
		    else 
		    {
		        return "success.jsp";
		    }
		    
		}
	
	@RequestMapping("/Delete/{id}")
	public String delete(@PathVariable int id)
	{
		erepo.deleteById(id);
		return  "redirect:/fetch";
	}
	
	@RequestMapping("{id}")
	public String update(@PathVariable int id , Model m)
	{
		Expense ob=erepo.findById(id).orElse(null);
		
		m.addAttribute("data", ob);
		
		return "update.jsp";
	}
	@RequestMapping("/edit/{id}")
	public String update(@PathVariable int id,@ModelAttribute Expense ee)
	{
		Expense ob=erepo.findById(id).orElse(null);
		
		if(ob!=null)
		{
			ob.setDescription(ee.getDescription());
			ob.setAmount(ee.getAmount());
			ob.setDate(ee.getDate());
			
			erepo.save(ob);
		}
		return "redirect:/fetch";
	}
	
}
