<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://unpkg.com/phosphor-icons"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
<!-- Featured Products -->
	<section class="py-12 bg-gray-50">
	    <div class="max-w-7xl mx-auto px-4">
	        <div class="text-center mb-8">
	            <h2 class="text-3xl font-bold text-gray-900 mb-3">Featured Products</h2>
	            <p class="text-gray-600">Handpicked items just for you</p>
	        </div>
	
	        <!-- Start Grid -->
				        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
				<c:if test="${empty featuredProducts}">
				    <p class="text-red-600 text-sm">No featured products found!</p>
				</c:if>
	
	            <c:forEach var="product" items="${featuredProducts}">
	                <div class="bg-white rounded-xl shadow-sm hover:shadow-lg transition-all card-hover group">
	                    <div class="relative overflow-hidden rounded-t-xl">
	                        <img src="Assets/Uploads/Products/${product.file_name}" 
	                             alt="${product.title}" 
	                             class="w-full h-48 object-cover group-hover:scale-105 transition-transform duration-300" />
	                        <div class="absolute top-3 left-3">
	                            <span class="bg-red-500 text-white px-2 py-1 rounded-full text-xs font-semibold">-20%</span>
	                        </div>
	                        <div class="absolute top-3 right-3 opacity-0 group-hover:opacity-100 transition-opacity">
	                            <button class="bg-white p-2 rounded-full shadow-lg hover:bg-gray-100">
	                                <i class="ph ph-heart text-gray-600 text-sm"></i>
	                            </button>
	                        </div>
	                    </div>
	                    <div class="p-4">
	                        <h3 class="font-semibold text-gray-900 mb-1">${product.title}</h3>
	                        <p class="text-gray-600 text-xs mb-3">${product.description}</p>
	                        <div class="flex items-center justify-between">
	                            <div class="flex items-center space-x-2">
	                                <span class="text-lg font-bold text-gray-900">$${product.price}</span>
	                                <span class="text-xs text-gray-500 line-through">$${product.originalPrice}</span>
	                            </div>
	                            <button onclick="addToCart('${product.title}', ${product.price})" class="bg-blue-600 hover:bg-blue-700 text-white px-3 py-2 rounded-lg transition-colors">
	                                <i class="ph ph-shopping-cart text-sm"></i>
	                            </button>
	                        </div>
	                    </div>
	                </div>
	            </c:forEach>
	
	        </div>
	        <!-- End Grid -->
	    </div>
	</section>
</body>
</html>