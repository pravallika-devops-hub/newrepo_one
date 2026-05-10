<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>NexusShop - Modern Ecommerce</title>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
        rel="stylesheet">

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            scroll-behavior: smooth;
        }

        :root {
            --bg: #0f172a;
            --card: rgba(255, 255, 255, 0.06);
            --border: rgba(255, 255, 255, 0.08);
            --primary: #7c3aed;
            --secondary: #06b6d4;
            --text: #ffffff;
            --muted: #94a3b8;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background:
                radial-gradient(circle at top left, rgba(124, 58, 237, 0.25), transparent 25%),
                radial-gradient(circle at bottom right, rgba(6, 182, 212, 0.2), transparent 25%),
                var(--bg);
            color: var(--text);
        }

        .container {
            width: 90%;
            max-width: 1300px;
            margin: auto;
        }

        /* HEADER */

        header {
            position: sticky;
            top: 0;
            z-index: 1000;
            backdrop-filter: blur(18px);
            background: rgba(15, 23, 42, 0.7);
            border-bottom: 1px solid var(--border);
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 0;
        }

        .logo {
            font-size: 30px;
            font-weight: 800;
        }

        .logo span {
            color: var(--primary);
        }

        nav {
            display: flex;
            gap: 30px;
        }

        nav a {
            text-decoration: none;
            color: white;
            transition: 0.3s;
            font-weight: 500;
        }

        nav a:hover {
            color: var(--secondary);
        }

        .icons {
            display: flex;
            gap: 20px;
            font-size: 20px;
        }

        /* HERO */

        .hero {
            min-height: 90vh;
            display: flex;
            align-items: center;
        }

        .hero-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 60px;
        }

        .hero-text {
            flex: 1;
        }

        .hero-text h1 {
            font-size: 75px;
            line-height: 1;
            margin-bottom: 25px;
            background: linear-gradient(to right, #fff, #a855f7);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero-text p {
            color: var(--muted);
            font-size: 18px;
            margin-bottom: 30px;
            max-width: 550px;
        }

        .buttons {
            display: flex;
            gap: 20px;
        }

        .btn {
            padding: 15px 30px;
            border-radius: 14px;
            border: none;
            cursor: pointer;
            font-size: 16px;
            font-weight: 600;
            transition: 0.4s;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--primary), var(--secondary));
            color: white;
            box-shadow: 0 10px 40px rgba(124, 58, 237, 0.4);
        }

        .btn-primary:hover {
            transform: translateY(-5px);
        }

        .btn-outline {
            background: transparent;
            border: 1px solid var(--border);
            color: white;
        }

        .btn-outline:hover {
            background: white;
            color: black;
        }

        .hero-image {
            flex: 1;
            text-align: center;
        }

        .hero-image img {
            width: 100%;
            max-width: 550px;
            animation: float 4s ease-in-out infinite;
            filter: drop-shadow(0 20px 40px rgba(124, 58, 237, 0.5));
        }

        @keyframes float {

            0%,
            100% {
                transform: translateY(0px);
            }

            50% {
                transform: translateY(-15px);
            }
        }

        /* SECTION */

        section {
            padding: 100px 0;
        }

        .section-title {
            text-align: center;
            margin-bottom: 60px;
        }

        .section-title h2 {
            font-size: 45px;
            margin-bottom: 10px;
        }

        .section-title p {
            color: var(--muted);
        }

        /* CATEGORIES */

        .categories {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
            gap: 25px;
        }

        .category-card {
            background: var(--card);
            border: 1px solid var(--border);
            backdrop-filter: blur(12px);
            padding: 35px 20px;
            border-radius: 24px;
            text-align: center;
            transition: 0.4s;
        }

        .category-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 50px rgba(124, 58, 237, 0.2);
        }

        .category-card i {
            font-size: 40px;
            margin-bottom: 15px;
            color: var(--secondary);
        }

        /* PRODUCTS */

        .products {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
            gap: 30px;
        }

        .product-card {
            background: var(--card);
            border: 1px solid var(--border);
            border-radius: 28px;
            overflow: hidden;
            backdrop-filter: blur(14px);
            transition: 0.4s;
        }

        .product-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 25px 60px rgba(124, 58, 237, 0.25);
        }

        .product-image {
            overflow: hidden;
        }

        .product-image img {
            width: 100%;
            height: 280px;
            object-fit: cover;
            transition: 0.5s;
        }

        .product-card:hover img {
            transform: scale(1.1);
        }

        .product-content {
            padding: 25px;
        }

        .product-content h3 {
            margin-bottom: 10px;
            font-size: 22px;
        }

        .product-content p {
            color: var(--muted);
            margin-bottom: 15px;
        }

        .price {
            font-size: 28px;
            font-weight: bold;
            color: var(--secondary);
            margin-bottom: 20px;
        }

        .add-cart {
            width: 100%;
            padding: 14px;
            border: none;
            border-radius: 14px;
            background: linear-gradient(135deg, var(--primary), var(--secondary));
            color: white;
            font-weight: 600;
            cursor: pointer;
            transition: 0.3s;
        }

        .add-cart:hover {
            opacity: 0.9;
            transform: scale(1.03);
        }

        /* DEAL */

        .deal {
            background: linear-gradient(135deg, #7c3aed, #06b6d4);
            padding: 60px;
            border-radius: 35px;
            text-align: center;
        }

        .deal h2 {
            font-size: 50px;
            margin-bottom: 20px;
        }

        .deal p {
            margin-bottom: 30px;
            font-size: 18px;
        }

        /* FOOTER */

        footer {
            padding: 40px 0;
            text-align: center;
            border-top: 1px solid var(--border);
            color: var(--muted);
        }

        /* RESPONSIVE */

        @media(max-width: 900px) {

            .hero-content {
                flex-direction: column;
                text-align: center;
            }

            .hero-text h1 {
                font-size: 55px;
            }

            nav {
                display: none;
            }
        }

        @media(max-width: 600px) {

            .hero-text h1 {
                font-size: 42px;
            }

            .section-title h2 {
                font-size: 32px;
            }

            .deal h2 {
                font-size: 35px;
            }

            .buttons {
                flex-direction: column;
            }
        }
    </style>
</head>

<body>

    <!-- HEADER -->

    <header>
        <div class="container navbar">

            <div class="logo">
                Nexus<span>Shop</span>
            </div>

            <nav>
                <a href="#">Home</a>
                <a href="#">Shop</a>
                <a href="#">Products</a>
                <a href="#">Deals</a>
                <a href="#">Contact</a>
            </nav>

            <div class="icons">
                <i class="fa-solid fa-magnifying-glass"></i>
                <i class="fa-regular fa-heart"></i>
                <i class="fa-solid fa-cart-shopping"></i>
            </div>

        </div>
    </header>

    <!-- HERO -->

    <section class="hero">
        <div class="container hero-content">

            <div class="hero-text">
                <h1>Upgrade Your Style Today</h1>

                <p>
                    Discover premium gadgets, fashion and accessories
                    with futuristic shopping experience.
                </p>

                <div class="buttons">
                    <button class="btn btn-primary">
                        Shop Now
                    </button>

                    <button class="btn btn-outline">
                        Explore
                    </button>
                </div>
            </div>

            <div class="hero-image">
                <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=1200&auto=format&fit=crop"
                    alt="">
            </div>

        </div>
    </section>

    <!-- CATEGORIES -->

    <section>
        <div class="container">

            <div class="section-title">
                <h2>Shop Categories</h2>
                <p>Browse our premium collections</p>
            </div>

            <div class="categories">

                <div class="category-card">
                    <i class="fa-solid fa-mobile-screen"></i>
                    <h3>Mobiles</h3>
                </div>

                <div class="category-card">
                    <i class="fa-solid fa-laptop"></i>
                    <h3>Laptops</h3>
                </div>

                <div class="category-card">
                    <i class="fa-solid fa-headphones"></i>
                    <h3>Audio</h3>
                </div>

                <div class="category-card">
                    <i class="fa-solid fa-shirt"></i>
                    <h3>Fashion</h3>
                </div>

                <div class="category-card">
                    <i class="fa-solid fa-camera"></i>
                    <h3>Cameras</h3>
                </div>

            </div>

        </div>
    </section>

    <!-- PRODUCTS -->

    <section>
        <div class="container">

            <div class="section-title">
                <h2>Trending Products</h2>
                <p>Most loved products this week</p>
            </div>

            <div class="products">

                <div class="product-card">
                    <div class="product-image">
                        <img src="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?q=80&w=1200&auto=format&fit=crop"
                            alt="">
                    </div>

                    <div class="product-content">
                        <h3>iPhone 15 Pro</h3>
                        <p>Latest Apple flagship smartphone</p>
                        <div class="price">$1299</div>

                        <button class="add-cart">
                            Add To Cart
                        </button>
                    </div>
                </div>

                <div class="product-card">
                    <div class="product-image">
                        <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?q=80&w=1200&auto=format&fit=crop"
                            alt="">
                    </div>

                    <div class="product-content">
                        <h3>Smart Watch</h3>
                        <p>Premium smartwatch with health tracking</p>
                        <div class="price">$399</div>

                        <button class="add-cart">
                            Add To Cart
                        </button>
                    </div>
                </div>

                <div class="product-card">
                    <div class="product-image">
                        <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=1200&auto=format&fit=crop"
                            alt="">
                    </div>

                    <div class="product-content">
                        <h3>Wireless Headphones</h3>
                        <p>Noise cancellation premium audio</p>
                        <div class="price">$299</div>

                        <button class="add-cart">
                            Add To Cart
                        </button>
                    </div>
                </div>

            </div>

        </div>
    </section>

    <!-- DEAL -->

    <section>
        <div class="container">

            <div class="deal">
                <h2>Mega Flash Sale</h2>

                <p>
                    Up to 70% OFF on premium collections.
                    Limited time only.
                </p>

                <button class="btn btn-primary">
                    Grab Deals
                </button>
            </div>

        </div>
    </section>

    <!-- FOOTER -->

    <footer>
        <div class="container">
            © 2026 NexusShop. All Rights Reserved.
        </div>
    </footer>

</body>

</html>
