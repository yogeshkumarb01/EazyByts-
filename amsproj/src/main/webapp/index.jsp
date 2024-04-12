
<%@page import="com.db.DBConnect" %>
<%@page import ="java.sql.Connection" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<%@include file="component/allcss.jsp" %>


<style type="text/css">
.paint-card{
      box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3)
}
</style>

</head>
<body>

<%@include file="component/navbar.jsp" %>
<%Connection conn = DBConnect.getConn(); %>


<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/ayur101.jpg" class="d-block w-100" alt="..."
      height="520px">
    </div>
    <div class="carousel-item">
      <img src="img/ayureco.jpg" class="d-block w-100" alt="..."  
      height="520px">>
    </div>
    <div class="carousel-item">
      <img src="img/ayur10.jpg" class="d-block w-100" alt="..." 
       height="520px">>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

		<div class="container p-3">
		
		<p class="text-center fs-2 ">Key Features of our Hospital</p>
		
		<div class="row">
		
		<div class="col-md-8 p-5">
		
		<div class="row">
		
		<div class="col-md-6">
		
		<div class="card paint-card">
		
		<div class="card-body">
		
		<p class="fs-5">100% Safety</p>
		
		<p>Our naturopathic approach prioritizes your safety above all else, 
		ensuring every treatment is carefully tailored to your well-being</p>
		
		</div>
		
		</div>
		
		</div>
		
		<div class="col-md-6">
		
		<div class="card paint-card">
		
		<div class="card-body">
		
		<p class="fs-5">Clean Environment</p>
		
		<p>Step into our pristine environment, where every corner is meticulously 
		maintained to offer you a sanctuary of cleanliness and rejuvenation</p>
		
		</div>
		
		</div>
		
		</div>
		
		<div class="col-md-6 mt-2">
		
		<div class="card paint-card">
		
		<div class="card-body">
		
		<p class="fs-5">Friendly Doctors</p> 
		
		<p>Our team of compassionate naturopathic doctors welcomes you with warm smiles and open hearts,
		 ready to listen to your concerns and guide you on your path to wellness</p>
		</div>
		
		</div>
		</div>
	
		<div class="col-md-6 mt-2">
		
		<div class="card paint-card">
		
		<div class="card-body">
		
		<p class="fs-5">Medical Research</p>
		
		<p>Benefit from the latest advancements in naturopathic medicine, as our dedicated team stays abreast of
		 cutting-edge research to offer you evidence-based therapies</p>
		
		</div>
		
		</div>
		
		</div>
		
		</div>
		
		</div>
		
		<div class="col-md-4">
		
		<img alt="" src="img/ayur102.jpg" width="450px" height="400px">
		
		</div>
		
		</div>
		
		</div>
		
		
		
		<div class="container p-2">
<hr>
	<p class="text-center fs-2 ">OUR FACILITIES</p>
	
	<div class="row">
	
	<div class="col-md-3">
	
	<div class="card paint-card">
	
	<div class="card-body text-center">
	
	<img src="img/yoga.jpeg" width="225px" height="300px">
	
	<p class="fw-bold fs-5"> YOGA </p>
	
	<p class="fs-7"> Yoga effectively improves flexibility,
	 strength, and mental focus while reducing stress and
	  promoting overall well-being</p>
	
	</div>
	
	</div>
	
	</div>
	
	<div class="col-md-3">
	
	<div class="card paint-card">
	
	<div class="card-body text-center">
	
	<img src="img/meditation.jpeg" width="225px" height="300px">
	
	<p class="fw-bold fs-5">MEDITATION</p>
	
	<p class="fs-7"> Meditation has been proven to reduce anxiety, enhance
	 emotional resilience, and cultivate inner peace through regular practice</p>
	
	</div>
	
	</div>
	
	</div>

	<div class="col-md-3">
	
	<div class="card paint-card">
	
	<div class="card-body text-center">
	
	<img src="img/kriya.jpeg" width="225px" height="300px">
	
	<p class="fw-bold fs-5">KRIYA</p>
	
	<p class="fs-7"> Kriya techniques are highly effective in purifying the 
	body,calming the mind, and awakening spiritual
	 consciousness for well being</p>
	
	</div>
	
	</div>
	
	</div>
	
	<div class="col-md-3">
	
	<div class="card paint-card">
	
	<div class="card-body text-center">
	
	<img src="img/pranayama.jpeg" width="225px" height="300px">
	
	<p class="fw-bold fs-5">PRANAYAMA</p>
	
	<p class="fs-7">Pranayama exercises are instrumental in regulating breath,
	 increasing energy levels,and promoting relaxation and mental clarity</p>
	
	</div>
	
	</div>
	
	</div>
	</div>
	</div>
	<%@include file="component/footer.jsp" %>

</body>
</html>
