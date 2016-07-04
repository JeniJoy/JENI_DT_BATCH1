package com.memo.controller;
import java.awt.List;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.memo.bean.Product;
import com.memo.service.ProductService;
import com.memo.service.ProductServiceImp;

@Controller
public class MainController {
	
	@Autowired
	private ProductService productServiceImp;
	

	@RequestMapping("/")
	public ModelAndView home() {

		ModelAndView vw = new ModelAndView("index");
		return vw;
	}
	@RequestMapping("Login")
	public ModelAndView login() {

		ModelAndView vw = new ModelAndView("Login");
		return vw;
	}
	@RequestMapping("cat1")
	public ModelAndView cat1() {

		ModelAndView vw = new ModelAndView("cat1");
		return vw;
	}
	@RequestMapping("cat2")
	public ModelAndView cat2() {

		ModelAndView vw = new ModelAndView("cat2");
		return vw;
	}
	@RequestMapping("cat3")
	public ModelAndView cat3() {

		ModelAndView vw = new ModelAndView("cat3");
		return vw;
	}

	@RequestMapping("allProducts")
	public ModelAndView allproducts() {
			
		    ProductService obj = new ProductServiceImp();
		    ArrayList<Product> list = (ArrayList<Product>) obj.getAllProducts();
		    
		     Gson g = new Gson();
		     String str=  g.toJson(list);
		   
			ModelAndView vw = new ModelAndView("allProducts");
			vw.addObject("data", str);
			return vw;

	}
	
	@RequestMapping("addProducts")
	public ModelAndView addProducts(){
		
		return new ModelAndView("addProduct", "command", new Product());
	}
	

	@RequestMapping("saveProduct")
	public ModelAndView saveProducts(@ModelAttribute("mobile") Product productbean, BindingResult result){
		
		 productServiceImp.addProduct(productbean);
		
		 return new ModelAndView("index");
	}
}
