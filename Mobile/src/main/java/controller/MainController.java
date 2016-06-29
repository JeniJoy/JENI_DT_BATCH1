package controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import bean.Product;
import service.ProductService;
import service.ProductServiceImp;

@Controller
public class MainController {

	@RequestMapping("/")
	public ModelAndView home() {

		ModelAndView vw = new ModelAndView("index");
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
}
