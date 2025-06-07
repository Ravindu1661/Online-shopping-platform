<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   

    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Shopper - Your Ultimate Shopping Destination</title>
    <script src="https://unpkg.com/phosphor-icons"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', sans-serif; }
        .gradient-bg { background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); }
        .card-hover { transition: all 0.3s ease; }
        .card-hover:hover { transform: translateY(-5px); }
        .floating-cart {
            position: fixed;
            bottom: 20px;
            right: 20px;
            z-index: 1000;
        }
    </style>
</head>
    <body class="bg-gray-50">
        <!-- Top Bar -->
        <div class="bg-gray-900 text-white text-xs py-1">
            <div class="max-w-7xl mx-auto px-4 flex justify-between items-center">
                <div class="flex items-center space-x-3">
                    <span><i class="ph ph-phone mr-1"></i> +1 (555) 123-4567</span>
                    <span><i class="ph ph-envelope mr-1"></i> support@eshopper.com</span>
                </div>
                <div class="flex items-center space-x-3">
                    <span>Free shipping on orders over $50!</span>
                    <div class="flex space-x-1">
                        <i class="ph ph-facebook-logo hover:text-blue-400 cursor-pointer text-sm"></i>
                        <i class="ph ph-twitter-logo hover:text-blue-400 cursor-pointer text-sm"></i>
                        <i class="ph ph-instagram-logo hover:text-pink-400 cursor-pointer text-sm"></i>
                    </div>
                </div>
            </div>
        </div>

        <!-- Main Navigation -->
        <header class="bg-white shadow-md sticky top-0 z-50">
        <div class="max-w-7xl mx-auto px-4">
            <div class="flex justify-between items-center py-3">
                <!-- Logo -->
                <div class="flex items-center flex-shrink-0">
                    <div class="text-2xl font-bold gradient-bg bg-clip-text text-transparent">
                        🛍️ E-Shopper
                    </div>
                </div>

                <!-- Search Bar -->
                <div class="hidden md:flex items-center flex-1 max-w-2xl mx-8">
                    <div class="relative w-full flex">
                        <input 
                            type="text" 
                            placeholder="Search for products, brands and more..." 
                            class="flex-1 px-4 py-2 text-sm border border-gray-300 rounded-l-lg focus:border-blue-500 focus:outline-none"
                            id="searchInput"
                        >
                        <button class="bg-blue-600 hover:bg-blue-700 px-6 py-2 text-white rounded-r-lg transition-colors flex items-center justify-center">
                            <i class="ph ph-magnifying-glass text-sm"></i>
                        </button>
                    </div>
                </div>

                <!-- User Actions -->
                <div class="flex items-center space-x-6 flex-shrink-0">
                    <div class="hidden md:flex items-center space-x-1 hover:text-blue-600 cursor-pointer transition-colors">
                        <i class="ph ph-user text-lg"></i>
                        <span class="text-xs font-medium">Account</span>
                    </div>
                    <div class="hidden md:flex items-center space-x-1 hover:text-red-600 cursor-pointer transition-colors">
                        <i class="ph ph-heart text-lg"></i>
                        <span class="text-xs font-medium">Wishlist</span>
                    </div>
                    <div class="relative flex items-center space-x-1 hover:text-blue-600 cursor-pointer transition-colors" id="cartButton">
                        <i class="ph ph-shopping-cart text-lg"></i>
                        <span class="text-xs font-medium hidden md:block">Cart</span>
                        <span class="absolute -top-1 -right-1 bg-red-500 text-white text-xs w-4 h-4 flex items-center justify-center rounded-full font-bold" id="cartCount">0</span>
                    </div>
                    <button class="md:hidden">
                        <i class="ph ph-list text-xl"></i>
                    </button>
                </div>
            </div>

            <!-- Navigation Menu -->
            <nav class="hidden md:flex items-center justify-between py-2 border-t text-sm">
                <div class="flex items-center space-x-8">
                    <a href="#" class="font-medium text-gray-700 hover:text-blue-600 transition-colors">Home</a>
                    <div class="relative group">
                        <a href="#" class="font-medium text-gray-700 hover:text-blue-600 transition-colors flex items-center">
                            Categories <i class="ph ph-caret-down ml-1 text-xs"></i>
                        </a>
                        <div class="absolute top-full left-0 bg-white shadow-lg rounded-lg py-2 w-48 opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all duration-200 z-10">
                            <a href="#" class="block px-4 py-2 hover:bg-gray-100 text-sm transition-colors">Men's Fashion</a>
                            <a href="#" class="block px-4 py-2 hover:bg-gray-100 text-sm transition-colors">Women's Fashion</a>
                            <a href="#" class="block px-4 py-2 hover:bg-gray-100 text-sm transition-colors">Electronics</a>
                            <a href="#" class="block px-4 py-2 hover:bg-gray-100 text-sm transition-colors">Home & Garden</a>
                            <a href="#" class="block px-4 py-2 hover:bg-gray-100 text-sm transition-colors">Sports & Outdoors</a>
                            <a href="#" class="block px-4 py-2 hover:bg-gray-100 text-sm transition-colors">Beauty & Health</a>
                        </div>
                    </div>
                    <a href="#" class="font-medium text-gray-700 hover:text-blue-600 transition-colors">Deals</a>
                    <a href="#" class="font-medium text-gray-700 hover:text-blue-600 transition-colors">New Arrivals</a>
                    <a href="#" class="font-medium text-gray-700 hover:text-blue-600 transition-colors">Best Sellers</a>
                    <a href="#" class="font-medium text-gray-700 hover:text-blue-600 transition-colors">Sale</a>
                </div>
                <div class="flex items-center space-x-6">
                    <a href="#" class="font-medium text-gray-700 hover:text-blue-600 transition-colors">Track Order</a>
                    <a href="#" class="font-medium text-gray-700 hover:text-blue-600 transition-colors">Help</a>
                    <a href="#" class="font-medium text-gray-700 hover:text-blue-600 transition-colors">Contact</a>
                </div>
            </nav>
        </div>
    </header>


    <!-- Hero  -->
    <section class="relative h-[50vh] overflow-hidden">
        <div class="carousel-container relative w-full h-full">
            <!-- Slide 1 -->
            <div class="carousel-slide absolute inset-0 transition-all duration-700 ease-in-out opacity-100" data-slide="1">
                <div class="relative w-full h-full">
                    <img src="https://images.unsplash.com/photo-1441986300917-64674bd600d8?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80" alt="Summer Collection" class="w-full h-full object-cover">
                    <div class="absolute inset-0 bg-black bg-opacity-40"></div>
                    <div class="absolute inset-0 z-20 flex items-center">
                        <div class="max-w-7xl mx-auto px-4 w-full">
                            <div class="text-white max-w-xl">
                                <h1 class="text-3xl md:text-5xl font-bold mb-3 leading-tight">Summer Collection 2025</h1>
                                <p class="text-base md:text-lg mb-6 opacity-90">Discover the latest trends in fashion with up to 50% off on selected items</p>
                                <div>
                                    <button class="bg-green-600 text-white px-6 py-3 rounded-lg font-semibold text-sm shadow-lg">
                                        Shop Now
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Slide 2 -->
            <div class="carousel-slide absolute inset-0 transition-all duration-700 ease-in-out opacity-0" data-slide="2">
                <div class="relative w-full h-full">
                    <img src="https://images.unsplash.com/photo-1560472354-b33ff0c44a43?ixlib=rb-4.0.3&auto=format&fit=crop&w=2126&q=80" alt="Electronics Sale" class="w-full h-full object-cover">
                    <div class="absolute inset-0 bg-black bg-opacity-40"></div>
                    <div class="absolute inset-0 z-20 flex items-center">
                        <div class="max-w-7xl mx-auto px-4 w-full">
                            <div class="text-white max-w-xl">
                                <h1 class="text-3xl md:text-5xl font-bold mb-3 leading-tight">Electronics Sale</h1>
                                <p class="text-base md:text-lg mb-6 opacity-90">Get the latest gadgets and electronics at unbeatable prices</p>
                                <div>
                                    <button class="bg-green-600 text-white px-6 py-3 rounded-lg font-semibold text-sm shadow-lg">
                                        Shop Now
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Slide 3 -->
            <div class="carousel-slide absolute inset-0 transition-all duration-700 ease-in-out opacity-0" data-slide="3">
                <div class="relative w-full h-full">
                    <img src="https://images.unsplash.com/photo-1586023492125-27b2c045efd7?ixlib=rb-4.0.3&auto=format&fit=crop&w=2058&q=80" alt="Home & Living" class="w-full h-full object-cover">
                    <div class="absolute inset-0 bg-black bg-opacity-40"></div>
                    <div class="absolute inset-0 z-20 flex items-center">
                        <div class="max-w-7xl mx-auto px-4 w-full">
                            <div class="text-white max-w-xl">
                                <h1 class="text-3xl md:text-5xl font-bold mb-3 leading-tight">Home & Living</h1>
                                <p class="text-base md:text-lg mb-6 opacity-90">Transform your space with our premium home decor collection</p>
                                <div>
                                    <button class="bg-green-600 text-white px-6 py-3 rounded-lg font-semibold text-sm shadow-lg">
                                        Shop Now
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Navigation Arrows -->
        <button onclick="previousSlide()" class="absolute left-4 top-1/2 transform -translate-y-1/2 bg-white/20 backdrop-blur-sm p-2 rounded-full transition-all z-30">
            <i class="ph ph-caret-left text-white text-lg"></i>
        </button>
        <button onclick="nextSlide()" class="absolute right-4 top-1/2 transform -translate-y-1/2 bg-white/20 backdrop-blur-sm p-2 rounded-full transition-all z-30">
            <i class="ph ph-caret-right text-white text-lg"></i>
        </button>

        <!-- Slide Indicators -->
        <div class="absolute bottom-4 left-1/2 transform -translate-x-1/2 flex space-x-2 z-30">
            <button onclick="goToSlide(1)" class="w-2 h-2 rounded-full bg-white transition-all" id="indicator-1"></button>
            <button onclick="goToSlide(2)" class="w-2 h-2 rounded-full bg-white/50 transition-all" id="indicator-2"></button>
            <button onclick="goToSlide(3)" class="w-2 h-2 rounded-full bg-white/50 transition-all" id="indicator-3"></button>
        </div>
    </section>



    <!-- Categories Section -->
    <section class="py-12 bg-white">
    <div class="max-w-7xl mx-auto px-4">
        <div class="text-center mb-10">
            <h2 class="text-3xl font-bold text-gray-900 mb-2">Shop by Category</h2>
            <p class="text-gray-600">Discover our wide range of products</p>
        </div>

        <div class="grid grid-cols-2 md:grid-cols-4 gap-6">
            <!-- Category Card -->
            <div class="group cursor-pointer">
                <div class="h-40 flex flex-col items-center justify-center bg-gradient-to-br from-blue-100 to-blue-200 rounded-xl p-6 text-center group-hover:shadow-lg transition-all">
                    <i class="ph ph-dress text-3xl text-blue-600 mb-2"></i>
                    <h3 class="font-semibold text-gray-900 text-sm">Fashion</h3>
                </div>
            </div>

            <!-- Category Card -->
            <div class="group cursor-pointer">
                <div class="h-40 flex flex-col items-center justify-center bg-gradient-to-br from-purple-100 to-purple-200 rounded-xl p-6 text-center group-hover:shadow-lg transition-all">
                    <i class="ph ph-laptop text-3xl text-purple-600 mb-2"></i>
                    <h3 class="font-semibold text-gray-900 text-sm">Electronics</h3>
                </div>
            </div>

            <!-- Category Card -->
            <div class="group cursor-pointer">
                <div class="h-40 flex flex-col items-center justify-center bg-gradient-to-br from-green-100 to-green-200 rounded-xl p-6 text-center group-hover:shadow-lg transition-all">
                    <i class="ph ph-house text-3xl text-green-600 mb-2"></i>
                    <h3 class="font-semibold text-gray-900 text-sm">Home</h3>
                </div>
            </div>

            <!-- Category Card -->
            <div class="group cursor-pointer">
                <div class="h-40 flex flex-col items-center justify-center bg-gradient-to-br from-pink-100 to-pink-200 rounded-xl p-6 text-center group-hover:shadow-lg transition-all">
                    <i class="ph ph-heart text-3xl text-pink-600 mb-2"></i>
                    <h3 class="font-semibold text-gray-900 text-sm">Beauty</h3>
                </div>
            </div>
        </div>
    </div>
</section>




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
		

    <!-- Features Section -->
    <section class="py-12 bg-white">
        <div class="max-w-7xl mx-auto px-4">
            <div class="text-center mb-8">
                <h2 class="text-3xl font-bold text-gray-900 mb-3">Why Choose E-Shopper?</h2>
                <p class="text-gray-600">We provide the best shopping experience</p>
            </div>
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
                <div class="text-center group">
                    <div class="bg-blue-100 w-16 h-16 rounded-full flex items-center justify-center mx-auto mb-4 group-hover:bg-blue-200 transition-colors">
                        <i class="ph ph-truck text-2xl text-blue-600"></i>
                    </div>
                    <h3 class="text-lg font-semibold text-gray-900 mb-2">Free Shipping</h3>
                    <p class="text-gray-600 text-sm">Free delivery on orders over $50. Fast and reliable shipping worldwide.</p>
                </div>
                <div class="text-center group">
                    <div class="bg-green-100 w-16 h-16 rounded-full flex items-center justify-center mx-auto mb-4 group-hover:bg-green-200 transition-colors">
                        <i class="ph ph-shield-check text-2xl text-green-600"></i>
                    </div>
                    <h3 class="text-lg font-semibold text-gray-900 mb-2">Secure Payment</h3>
                    <p class="text-gray-600 text-sm">Your payment information is protected with bank-level security.</p>
                </div>
                <div class="text-center group">
                    <div class="bg-purple-100 w-16 h-16 rounded-full flex items-center justify-center mx-auto mb-4 group-hover:bg-purple-200 transition-colors">
                        <i class="ph ph-arrow-clockwise text-2xl text-purple-600"></i>
                    </div>
                    <h3 class="text-lg font-semibold text-gray-900 mb-2">Easy Returns</h3>
                    <p class="text-gray-600 text-sm">30-day return policy. No questions asked, hassle-free returns.</p>
                </div>
                <div class="text-center group">
                    <div class="bg-orange-100 w-16 h-16 rounded-full flex items-center justify-center mx-auto mb-4 group-hover:bg-orange-200 transition-colors">
                        <i class="ph ph-headset text-2xl text-orange-600"></i>
                    </div>
                    <h3 class="text-lg font-semibold text-gray-900 mb-2">24/7 Support</h3>
                    <p class="text-gray-600 text-sm">Round-the-clock customer support to help you anytime.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Newsletter Section -->
    <section class="py-12 gradient-bg">
        <div class="max-w-3xl mx-auto px-4 text-center">
            <h2 class="text-3xl font-bold text-white mb-3">Stay Updated</h2>
            <p class="text-lg text-white opacity-90 mb-6">Subscribe to our newsletter for exclusive deals and latest updates</p>
            <div class="flex flex-col md:flex-row gap-3 max-w-md mx-auto">
                <input 
                    type="email" 
                    placeholder="Enter your email address" 
                    class="flex-1 px-4 py-3 rounded-lg border-0 focus:outline-none focus:ring-2 focus:ring-white"
                >
                <button class="bg-white text-gray-900 px-6 py-3 rounded-lg font-semibold hover:bg-gray-100 transition-colors">
                    Subscribe
                </button>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-gray-900 text-white py-12">
        <div class="max-w-7xl mx-auto px-4">
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-6">
                <div>
                    <div class="text-xl font-bold mb-3">🛍️ E-Shopper</div>
                    <p class="text-gray-400 mb-3 text-sm">Your ultimate shopping destination for quality products at unbeatable prices.</p>
                    <div class="flex space-x-3">
                        <i class="ph ph-facebook-logo text-lg hover:text-blue-400 cursor-pointer transition-colors"></i>
                        <i class="ph ph-twitter-logo text-lg hover:text-blue-400 cursor-pointer transition-colors"></i>
                        <i class="ph ph-instagram-logo text-lg hover:text-pink-400 cursor-pointer transition-colors"></i>
                        <i class="ph ph-youtube-logo text-lg hover:text-red-400 cursor-pointer transition-colors"></i>
                    </div>
                </div>
                <div>
                    <h3 class="font-semibold mb-3">Quick Links</h3>
                    <ul class="space-y-2 text-gray-400 text-sm">
                        <li><a href="#" class="hover:text-white transition-colors">About Us</a></li>
                        <li><a href="#" class="hover:text-white transition-colors">Contact</a></li>
                        <li><a href="#" class="hover:text-white transition-colors">FAQ</a></li>
                        <li><a href="#" class="hover:text-white transition-colors">Shipping Info</a></li>
                    </ul>
                </div>
                <div>
                    <h3 class="font-semibold mb-3">Categories</h3>
                    <ul class="space-y-2 text-gray-400 text-sm">
                        <li><a href="#" class="hover:text-white transition-colors">Fashion</a></li>
                        <li><a href="#" class="hover:text-white transition-colors">Electronics</a></li>
                        <li><a href="#" class="hover:text-white transition-colors">Home & Garden</a></li>
                        <li><a href="#" class="hover:text-white transition-colors">Beauty</a></li>
                    </ul>
                </div>
                <div>
                    <h3 class="font-semibold mb-3">Customer Service</h3>
                    <ul class="space-y-2 text-gray-400 text-sm">
                        <li><a href="#" class="hover:text-white transition-colors">Returns</a></li>
                        <li><a href="#" class="hover:text-white transition-colors">Track Order</a></li>
                        <li><a href="#" class="hover:text-white transition-colors">Size Guide</a></li>
                    </ul>
                </div>
            </div>
            <div class="border-t border-gray-800 pt-6 flex flex-col md:flex-row justify-between items-center">
                <p class="text-gray-400 text-xs">&copy; 2025 E-Shopper. All rights reserved.</p>
                <div class="flex space-x-4 mt-3 md:mt-0">
                    <a href="#" class="text-gray-400 hover:text-white text-xs transition-colors">Privacy Policy</a>
                    <a href="#" class="text-gray-400 hover:text-white text-xs transition-colors">Terms of Service</a>
                    <a href="#" class="text-gray-400 hover:text-white text-xs transition-colors">Cookie Policy</a>
                </div>
            </div>
        </div>
    </footer>

    <!-- Floating Cart Button -->
    <div class="floating-cart">
        <button id="floatingCartBtn" class="bg-blue-600 hover:bg-blue-700 text-white p-3 rounded-full shadow-lg transition-all transform hover:scale-105">
            <i class="ph ph-shopping-cart text-lg"></i>
            <span class="absolute -top-1 -right-1 bg-red-500 text-white text-xs w-5 h-5 flex items-center justify-center rounded-full font-bold" id="floatingCartCount">0</span>
        </button>
    </div>

    <!-- Cart Modal -->
    <div id="cartModal" class="fixed inset-0 bg-black bg-opacity-50 z-50 hidden">
        <div class="flex items-center justify-center min-h-screen p-4">
            <div class="bg-white rounded-xl max-w-md w-full max-h-[80vh] overflow-hidden">
                <div class="flex items-center justify-between p-4 border-b">
                    <h3 class="text-lg font-semibold">Shopping Cart</h3>
                    <button onclick="closeCart()" class="text-gray-400 hover:text-gray-600">
                        <i class="ph ph-x text-lg"></i>
                    </button>
                </div>
                <div id="cartItems" class="p-4 max-h-80 overflow-y-auto">
                    <p class="text-gray-500 text-center py-6 text-sm">Your cart is empty</p>
                </div>
                <div class="border-t p-4">
                    <div class="flex items-center justify-between mb-3">
                        <span class="font-semibold">Total:</span>
                        <span id="cartTotal" class="text-lg font-bold text-blue-600">$0.00</span>
                    </div>
                    <button class="w-full bg-blue-600 hover:bg-blue-700 text-white py-2 rounded-lg font-semibold transition-colors">
                        Proceed to Checkout
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- Back to Top Button -->
    <button id="backToTop" class="fixed bottom-20 left-6 bg-gray-800 hover:bg-gray-700 text-white p-2 rounded-full shadow-lg opacity-0 invisible transition-all transform hover:scale-105">
        <i class="ph ph-arrow-up text-lg"></i>
    </button>

    <!-- JavaScript -->
    <script>
        // Carousel functionality
        let currentSlideIndex = 1;
        const totalSlides = 3;
        let slideInterval;

        function showSlide(slideNumber) {
            // Hide all slides
            document.querySelectorAll('.carousel-slide').forEach(slide => {
                slide.style.opacity = '0';
            });
            
            // Show current slide
            document.querySelector(`[data-slide="${slideNumber}"]`).style.opacity = '1';
            
            // Update indicators
            document.querySelectorAll('[id^="indicator-"]').forEach(indicator => {
                indicator.classList.remove('bg-white');
                indicator.classList.add('bg-white', 'bg-opacity-50');
            });
            document.getElementById(`indicator-${slideNumber}`).classList.remove('bg-opacity-50');
            
            currentSlideIndex = slideNumber;
        }

        function nextSlide() {
            const next = currentSlideIndex >= totalSlides ? 1 : currentSlideIndex + 1;
            showSlide(next);
        }

        function previousSlide() {
            const prev = currentSlideIndex <= 1 ? totalSlides : currentSlideIndex - 1;
            showSlide(prev);
        }

        function goToSlide(slideNumber) {
            showSlide(slideNumber);
            resetAutoSlide();
        }

        function startAutoSlide() {
            slideInterval = setInterval(nextSlide, 5000);
        }

        function resetAutoSlide() {
            clearInterval(slideInterval);
            startAutoSlide();
        }

        // Shopping Cart functionality
        let cart = [];
        let cartTotal = 0;

        function addToCart(productName, price) {
            const existingItem = cart.find(item => item.name === productName);
            
            if (existingItem) {
                existingItem.quantity += 1;
            } else {
                cart.push({
                    name: productName,
                    price: price,
                    quantity: 1
                });
            }
            
            updateCartUI();
            showCartNotification(productName);
        }

        function removeFromCart(productName) {
            cart = cart.filter(item => item.name !== productName);
            updateCartUI();
        }

        function updateCartUI() {
            const cartCount = cart.reduce((total, item) => total + item.quantity, 0);
            cartTotal = cart.reduce((total, item) => total + (item.price * item.quantity), 0);
            
            // Update cart counters
            document.getElementById('cartCount').textContent = cartCount;
            document.getElementById('floatingCartCount').textContent = cartCount;
            document.getElementById('cartTotal').textContent = `$${cartTotal.toFixed(2)}`;
            
            // Update cart items display
            const cartItemsContainer = document.getElementById('cartItems');
            
            if (cart.length === 0) {
                cartItemsContainer.innerHTML = '<p class="text-gray-500 text-center py-6 text-sm">Your cart is empty</p>';
            } else {
                cartItemsContainer.innerHTML = cart.map(item => `
                    <div class="flex items-center justify-between py-2 border-b last:border-b-0">
                        <div class="flex-1">
                            <h4 class="font-medium text-gray-900 text-sm">${item.name}</h4>
                            <p class="text-xs text-gray-600">$${item.price.toFixed(2)} x ${item.quantity}</p>
                        </div>
                        <div class="flex items-center space-x-2">
                            <span class="font-semibold text-sm">$${(item.price * item.quantity).toFixed(2)}</span>
                            <button onclick="removeFromCart('${item.name}')" class="text-red-500 hover:text-red-700">
                                <i class="ph ph-trash text-xs"></i>
                            </button>
                        </div>
                    </div>
                `).join('');
            }
        }

        function showCartNotification(productName) {
            // Create and show a temporary notification
            const notification = document.createElement('div');
            notification.className = 'fixed top-16 right-6 bg-green-500 text-white px-4 py-2 rounded-lg shadow-lg z-50 transform translate-x-full transition-transform';
            notification.innerHTML = `
                <div class="flex items-center space-x-2">
                    <i class="ph ph-check-circle text-sm"></i>
                    <span class="text-sm">${productName} added to cart!</span>
                </div>
            `;
            
            document.body.appendChild(notification);
            
            // Animate in
            setTimeout(() => {
                notification.classList.remove('translate-x-full');
            }, 100);
            
            // Remove after 3 seconds
            setTimeout(() => {
                notification.classList.add('translate-x-full');
                setTimeout(() => {
                    document.body.removeChild(notification);
                }, 300);
            }, 3000);
        }

        function openCart() {
            document.getElementById('cartModal').classList.remove('hidden');
            document.body.style.overflow = 'hidden';
        }

        function closeCart() {
            document.getElementById('cartModal').classList.add('hidden');
            document.body.style.overflow = 'auto';
        }

        // Search functionality
        function handleSearch() {
            const searchTerm = document.getElementById('searchInput').value.trim();
            if (searchTerm) {
                alert(`Searching for: ${searchTerm}`);
                // Implement actual search functionality here
            }
        }

        // Back to top functionality
        function toggleBackToTop() {
            const backToTopBtn = document.getElementById('backToTop');
            if (window.pageYOffset > 300) {
                backToTopBtn.classList.remove('opacity-0', 'invisible');
            } else {
                backToTopBtn.classList.add('opacity-0', 'invisible');
            }
        }

        function scrollToTop() {
            window.scrollTo({
                top: 0,
                behavior: 'smooth'
            });
        }

        // Event Listeners
        document.addEventListener('DOMContentLoaded', function() {
            // Initialize carousel
            showSlide(1);
            startAutoSlide();
            
            // Cart button events
            document.getElementById('cartButton').addEventListener('click', openCart);
            document.getElementById('floatingCartBtn').addEventListener('click', openCart);
            
            // Search functionality
            document.getElementById('searchInput').addEventListener('keypress', function(e) {
                if (e.key === 'Enter') {
                    handleSearch();
                }
            });
            
            // Back to top button
            document.getElementById('backToTop').addEventListener('click', scrollToTop);
            
            // Close cart when clicking outside
            document.getElementById('cartModal').addEventListener('click', function(e) {
                if (e.target === this) {
                    closeCart();
                }
            });
            
            // Smooth scrolling for anchor links
            document.querySelectorAll('a[href^="#"]').forEach(anchor => {
                anchor.addEventListener('click', function (e) {
                    e.preventDefault();
                    const target = document.querySelector(this.getAttribute('href'));
                    if (target) {
                        target.scrollIntoView({
                            behavior: 'smooth'
                        });
                    }
                });
            });
        });

        // Window scroll events
        window.addEventListener('scroll', function() {
            toggleBackToTop();
            
            // Add shadow to header on scroll
            const header = document.querySelector('header');
            if (window.pageYOffset > 0) {
                header.classList.add('shadow-lg');
            } else {
                header.classList.remove('shadow-lg');
            }
        });

        // Pause carousel on hover
        document.querySelector('.carousel-container').addEventListener('mouseenter', function() {
            clearInterval(slideInterval);
        });

        document.querySelector('.carousel-container').addEventListener('mouseleave', function() {
            startAutoSlide();
        });

        // Mobile menu toggle (basic implementation)
        function toggleMobileMenu() {
            // Implement mobile menu toggle functionality
            console.log('Mobile menu toggle');
        }

        // Add some sample products to demonstrate cart functionality
        function loadSampleData() {
            // This would typically come from an API
            console.log('Sample data loaded');
        }

        // Initialize the application
        loadSampleData();
    </script>
</body>
</html>

