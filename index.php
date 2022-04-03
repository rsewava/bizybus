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
								<a		href	=	"/">Dropdown 1</a>
							</li>
							<li>
								<a		href	=	"/">Dropdown 2</a>
							</li>
							<li>
								<a		href	=	"/">Dropdown 3</a>
							</li>
							<li>
								<a		href	=	"/">Dropdown 4</a>
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
	</body>
</html>