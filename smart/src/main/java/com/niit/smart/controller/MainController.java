package com.niit.smart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.smartbackend.dao.CategoryDAO;
import com.niit.smartbackend.model.Category;

@Controller
public class MainController {
	
	@Autowired
	public CategoryDAO categoryDAO;
	
	
	/* To land in the home page our home page is adminHome.jsp also if the user gives / it wil go to home page*/
		@RequestMapping(value={"/", "adminHome"})
		public ModelAndView home(){
			
			return new ModelAndView("adminHome");
		}
		
		
		
		
		
		/*This will work when u click Category option in the mene temp if is coming here and we are adding model elements and then redirect to category.jsp */
		@RequestMapping(value="addCategory", method = RequestMethod.GET)		
		public ModelAndView addcategory(Model model){
			model.addAttribute("category", new Category());
			model.addAttribute("categoryList", this.categoryDAO.list());
			return new ModelAndView("category");
		}
		
		
		
		/*This month is to add or update the data into the table , this will work when the user clicks the add buttong or update button in the category.jsp page*/
		@RequestMapping(value="saveCategory")
		public ModelAndView savecategory(@ModelAttribute Category category){
					categoryDAO.saveOrUpdate(category);
			return new ModelAndView("adminHome");
		}
		
		
		@RequestMapping(value= "/category/add", method = RequestMethod.POST)
		public String addCategory(@ModelAttribute("category") Category category){
		
				categoryDAO.saveOrUpdate(category);
			
			return "redirect:/addCategory";
			
		}
		
/*for delete operation*/
		@RequestMapping("category/remove/{id}")
	    public String deleteCategory(@PathVariable("id") String id, ModelMap model) throws Exception{

			
	       try {
			categoryDAO.delete(id);
			model.addAttribute("message","Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message",e.getMessage());
			e.printStackTrace();
		}
	       //redirectAttrs.addFlashAttribute(arg0, arg1)
	        return "redirect:/addCategory";
	    }
	 
	    @RequestMapping("category/edit/{id}")
	    public String editCategory(@PathVariable("id") String id, Model model){
	    	System.out.println("editCategory");
	        model.addAttribute("category", this.categoryDAO.get(id));
	        model.addAttribute("listCategorys", this.categoryDAO.list());
	        return "category";
	    }


	    

}
