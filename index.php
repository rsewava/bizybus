<?php
	require_once "require/db_config.php";
?>
<!DOCTYPE html>
<html	lang	=	"en">
	<head>
        <link   href    =   "css/colors_and_backgrounds.css"
                rel     =   "stylesheet"
                type    =   "text/css"/>
        <link   href    =   "css/structure.css"
                rel     =   "stylesheet"
                type    =   "text/css"/>
		<meta 	charset	=	"UTF-8" />
	</head>
	<body>
		<header>

			<nav	class	=	"navbar">
				<!-- LOGO -->
				<div	class	=	"logo">Bizybus</div>
				<!-- NAVIGATION MENU -->
				<ul		class	=	"nav-links">
					<!-- USING CHECKBOX HACK -->
					<input	id		=	"checkbox_toggle" 
							type	=	"checkbox"/>
					<label	class	=	"hamburger"
							for		=	"checkbox_toggle">
						&#9776;
					</label>
					<!-- NAVIGATION MENUS -->
					<div	class	=	"menu">
						<li>
							<a		href	=	"/">Home</a>
						</li>
						<li>
							<a		href	=	"/">About Us</a>
						</li>
						<li		class	=	"services">
							<a		href	=	"/">Services</a>
							<!-- DROPDOWN MENU -->
							<ul		class	=	"dropdown">
								<li>
									<a		href	=	"/">Bus Ticketing</a>
								</li>
								<li>
									<a		href	=	"/">Parcel Delivery</a>
								</li>
								<li>
									<a		href	=	"/">Savings</a>
								</li>
								<li>
									<a		href	=	"/">Hotel Bookings</a>
								</li>
							</ul>
						</li>
						<li>
							<a		href	=	"/">Pricing</a>
						</li>
						<li>
							<a		href	=	"/">Contact Us</a>
						</li>
					</div>
				</ul>
			</nav>
		</header>
		<main>
			<div>
				Stop Looking.
				Start Tracking!
				The fututre of bus transport in Uganda starts with Bizybus.
				We are Uganda's Largest online bus booking platform and are trusted by over x users. 
			</div>
			<form		action	=	""
					method	=	"">
				<label		for	=	"origin">
					Start:
				</label>
				<input		id	=	"origin"
						list	=	"start"
						name	=	"origin"/>
				<datalist	id	=	"start">
<?php
	$query			=	"SELECT `id`, `place` FROM `places` ORDER BY `place` ASC";
    	$statement_handler	=	$DB_connection_handler->prepare($query);
    	$statement_handler->execute();
    	$start			=	$statement_handler->fetchAll(PDO::FETCH_ASSOC);
    	foreach ($start as $row => $option)
    	{
?>
					<option		value	=	"<?php echo $option['place'];?>"/>
<?php
	}
?>
				</datalist>
				<label		for	=	"destination">
					Destination:
				</label>
				<input		id	=	"destination"
						list	=	"end"
						name	=	"destination"/>
				<datalist	id	=	"end">
<?php
	$query			=	"SELECT `id`, `place` FROM `places` ORDER BY `place` ASC";
    	$statement_handler	=	$DB_connection_handler->prepare($query);
    	$statement_handler->execute();
    	$end			=	$statement_handler->fetchAll(PDO::FETCH_ASSOC);
    	foreach ($end as $row 	=> $option)
    	{
?>
					<option		value	=	"<?php echo $option['place'];?>"/>
<?php
	}
?>
				</datalist>
				<input		type	=	"submit">
			</form>
		</main>
		<footer>
			
		</footer>
	</body>
</html>