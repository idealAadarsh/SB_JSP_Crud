package com.adr.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.adr.demo.dao.ProductRepository;
import com.adr.demo.model.Product;
import com.adr.demo.service.ProductService;

@Controller
public class ProductController {
		
		@Autowired
		private ProductService service;
		
		@RequestMapping("/")
		public String viewHomePage(Model model) {
			List<Product> list = service.listAll();
			model.addAttribute("list", list);
			
			return "index";
		}
		
		@RequestMapping("/new")
		public String newProduct(Model model) {
			
			Product product = new Product();
			model.addAttribute("product", product);
			
			return "new_product";
		}
		
		@RequestMapping(value = "/save", method = RequestMethod.POST)
		public String save(@ModelAttribute ("product") Product product) {
			
			service.save(product);
			return "redirect:/";
		}
		
		
		@RequestMapping("/delete")
		public String delete(@RequestParam Long id) {
			
			service.delete(id);
			return "redirect:/";
		}
		
		
		@RequestMapping("/edit")
		public ModelAndView update(@RequestParam Long id) {
			
			ModelAndView mv = new ModelAndView("edit_product");
			Product product = service.get(id);
			mv.addObject("product", product);
			
			return mv;
		}
}
