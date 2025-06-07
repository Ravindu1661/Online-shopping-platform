<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
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