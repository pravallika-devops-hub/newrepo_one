:root{
  --bg:#f4f7fb;
  --card:#ffffff;
  --primary:#0f172a;
  --secondary:#1e293b;
  --accent:#06b6d4;
  --accent2:#3b82f6;
  --text:#111827;
  --muted:#64748b;
  --radius:20px;
  --shadow:0 10px 30px rgba(0,0,0,0.08);
}

*{
  margin:0;
  padding:0;
  box-sizing:border-box;
}

body{
  font-family:'Inter',sans-serif;
  background:var(--bg);
  color:var(--text);
  line-height:1.6;
}

/* HEADER */

header{
  position:sticky;
  top:0;
  z-index:100;
  backdrop-filter:blur(14px);
  background:rgba(255,255,255,0.7);
  border-bottom:1px solid rgba(255,255,255,0.3);
}

.header-inner{
  display:flex;
  justify-content:space-between;
  align-items:center;
  padding:18px 0;
}

.brand{
  font-size:28px;
  font-weight:700;
  color:var(--primary);
}

.brand .accent{
  color:var(--accent);
}

.main-nav ul{
  display:flex;
  gap:18px;
  list-style:none;
}

.main-nav a{
  padding:10px 16px;
  border-radius:12px;
  transition:.3s;
  font-weight:500;
}

.main-nav a:hover{
  background:white;
  box-shadow:var(--shadow);
  color:var(--accent);
}

/* SEARCH */

.search{
  background:white;
  padding:10px 16px;
  border-radius:50px;
  display:flex;
  align-items:center;
  width:280px;
  box-shadow:var(--shadow);
}

.search input{
  border:none;
  outline:none;
  width:100%;
  font-size:14px;
  background:none;
}

/* HERO */

.hero{
  min-height:90vh;
  display:flex;
  align-items:center;
  justify-content:center;
  text-align:center;
  padding:40px;
  color:white;

  background:
  linear-gradient(rgba(15,23,42,.75),rgba(15,23,42,.75)),
  url('https://images.unsplash.com/photo-1523275335684-37898b6baf30?q=80&w=1600&auto=format&fit=crop') center/cover no-repeat;
}

.hero h1{
  font-size:72px;
  font-weight:800;
  line-height:1.1;
  margin-bottom:20px;
}

.hero p{
  max-width:750px;
  margin:auto;
  font-size:20px;
  opacity:.9;
}

/* BUTTONS */

.btn{
  border:none;
  padding:14px 28px;
  border-radius:50px;
  font-weight:600;
  cursor:pointer;
  transition:.3s;
  font-size:15px;
}

.btn-primary{
  background:linear-gradient(135deg,var(--accent),var(--accent2));
  color:white;
  box-shadow:0 10px 20px rgba(6,182,212,.35);
}

.btn-primary:hover{
  transform:translateY(-3px);
}

.btn-ghost{
  background:rgba(255,255,255,.12);
  color:white;
  backdrop-filter:blur(10px);
  border:1px solid rgba(255,255,255,.2);
}

/* SECTION */

.section{
  padding:90px 0;
}

.title{
  text-align:center;
  margin-bottom:50px;
}

.title h2{
  font-size:42px;
  margin-bottom:10px;
}

.title p{
  color:var(--muted);
}

/* CATEGORY CARDS */

.categories{
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(180px,1fr));
  gap:24px;
}

.cat-card{
  background:white;
  padding:40px 20px;
  border-radius:var(--radius);
  text-align:center;
  transition:.35s;
  box-shadow:var(--shadow);
  cursor:pointer;
}

.cat-card:hover{
  transform:translateY(-10px);
}

.cat-card .icon{
  width:70px;
  height:70px;
  margin:auto;
  display:grid;
  place-items:center;
  border-radius:50%;
  background:linear-gradient(135deg,var(--accent),var(--accent2));
  color:white;
  font-size:28px;
  margin-bottom:20px;
}

/* PRODUCTS */

.products{
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(270px,1fr));
  gap:30px;
}

.product{
  background:white;
  border-radius:24px;
  overflow:hidden;
  box-shadow:var(--shadow);
  transition:.35s;
  position:relative;
}

.product:hover{
  transform:translateY(-10px);
}

.product img{
  width:100%;
  height:260px;
  object-fit:cover;
}

.product-body{
  padding:22px;
}

.product h5{
  font-size:20px;
  margin-bottom:12px;
}

.price{
  font-size:24px;
  font-weight:700;
}

.old-price{
  color:#94a3b8;
  text-decoration:line-through;
}

.product-footer{
  display:flex;
  gap:12px;
  padding:0 22px 22px;
}

.add-btn{
  flex:1;
  padding:14px;
  border:none;
  border-radius:14px;
  background:linear-gradient(135deg,var(--primary),var(--secondary));
  color:white;
  font-weight:600;
  cursor:pointer;
  transition:.3s;
}

.add-btn:hover{
  opacity:.9;
}

/* DEAL SECTION */

.deal{
  background:white;
  border-radius:30px;
  overflow:hidden;
  box-shadow:var(--shadow);
}

.deal img{
  width:100%;
  height:100%;
  object-fit:cover;
}

.deal .content{
  padding:50px;
}

.time-box{
  background:linear-gradient(135deg,var(--accent),var(--accent2));
  color:white;
  border-radius:18px;
  padding:20px;
  min-width:90px;
}

/* TESTIMONIALS */

.testimonial{
  background:white;
  padding:30px;
  border-radius:20px;
  box-shadow:var(--shadow);
}

/* NEWSLETTER */

.newsletter{
  background:linear-gradient(135deg,#0f172a,#1e293b);
  color:white;
  padding:60px;
  border-radius:30px;
  text-align:center;
  box-shadow:var(--shadow);
}

.newsletter input{
  padding:16px 20px;
  border:none;
  border-radius:50px;
  width:340px;
  max-width:100%;
}

/* FOOTER */

footer{
  padding:70px 0 30px;
  background:#0f172a;
  color:#cbd5e1;
}

footer .icon-btn{
  background:rgba(255,255,255,.08);
  width:42px;
  height:42px;
  border-radius:50%;
  display:grid;
  place-items:center;
}

/* RESPONSIVE */

@media(max-width:768px){

  .hero h1{
    font-size:42px;
  }

  .hero p{
    font-size:16px;
  }

  .main-nav{
    display:none;
  }

  .search{
    width:180px;
  }

  .deal{
    flex-direction:column;
  }
}
