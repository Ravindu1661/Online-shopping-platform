package com.eshopper.servelet;

import com.eshopper.model.Product;
import com.eshopper.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/Home")

public class ProductServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductService productService;

	    @Override
	    
		public void init() throws ServletException {
	    	super.init();
			productService = new ProductService();
		}
	    
	   @Override
	   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    List<Product> products = productService.getAllProducts();
		    System.out.println("Products count: " + products.size());  // Debug print
		    request.setAttribute("featuredProducts", products);
		    request.getRequestDispatcher("/index.jsp").forward(request, response);

		}

}
//හෙල්ලොඑජ්ජ්ඩෆ්ජ්ජෆ්