package com.project.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
	public String home()
	{
		return "index.jsp";
	}
	
	@RequestMapping("/login")
	public String addexpense(@ModelAttribute Expense ob)
	{
		erepo.save(ob);
		return "AddExpense.jsp";
	}
	
	@RequestMapping("/fetch")
	public String datafetch(Model data)
	{
		List<Expense> al=erepo.findAll();
		System.out.println(al);
		data.addAttribute("data",al);
		return "DataFetch.jsp";
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


}
