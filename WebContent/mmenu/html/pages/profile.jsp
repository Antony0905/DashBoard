<%@page import="com.everis.dao.DaoGeneric"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
	import="javax.servlet.http.HttpSession"   
	import="java.util.List" 
	import="com.everis.model.Rms"
	import="com.everis.dao.DaoGeneric"
	import="java.util.ArrayList"
%>

<!DOCTYPE html>
<html class="no-js css-menubar" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta name="description" content="bootstrap admin template">
<meta name="author" content="">
<title>Perfil | Everis Brazil Admin</title>
<link rel="apple-touch-icon"
	href="../../assets/images/apple-touch-icon.png">
<link rel="shortcut icon" href="../../assets/images/favicon.ico">
<!-- Stylesheets -->
<link rel="stylesheet" href="../../../global/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../../../global/css/bootstrap-extend.min.css">
<link rel="stylesheet" href="../../assets/css/site.min.css">
<link rel="stylesheet" href="../../../global/mycss/profile.css">
<!-- Plugins -->
<link rel="stylesheet"
	href="../../../global/vendor/animsition/animsition.css">
<link rel="stylesheet"
	href="../../../global/vendor/asscrollable/asScrollable.css">
<link rel="stylesheet"
	href="../../../global/vendor/switchery/switchery.css">
<link rel="stylesheet"
	href="../../../global/vendor/intro-js/introjs.css">
<link rel="stylesheet"
	href="../../../global/vendor/slidepanel/slidePanel.css">
<link rel="stylesheet"
	href="../../../global/vendor/jquery-mmenu/jquery-mmenu.css">
<link rel="stylesheet"
	href="../../../global/vendor/flag-icon-css/flag-icon.css">
<link rel="stylesheet" href="../../../global/vendor/waves/waves.css">
<!-- Fonts -->
<link rel="stylesheet"
	href="../../../global/fonts/material-design/material-design.min.css">
<link rel="stylesheet"
	href="../../../global/fonts/brand-icons/brand-icons.min.css">
<!--[if lt IE 9]>
    <script src="../../../global/vendor/html5shiv/html5shiv.min.js"></script>
    <![endif]-->
<!--[if lt IE 10]>
    <script src="../../../global/vendor/media-match/media.match.min.js"></script>
    <script src="../../../global/vendor/respond/respond.min.js"></script>
    <![endif]-->
<!-- Scripts -->
<script src="../../../global/vendor/modernizr/modernizr.js"></script>
<script src="../../../global/vendor/breakpoints/breakpoints.js"></script>
<script>
	Breakpoints();
	
</script>
</head>
<body class="site-navbar-small page-profile">
	<!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
	<nav
		class="site-navbar navbar navbar-default navbar-fixed-top navbar-mega"
		role="navigation">
		<div class="navbar-header">
			<button type="button"
				class="navbar-toggle hamburger hamburger-close navbar-toggle-left hided"
				data-toggle="menubar">
				<span class="sr-only">Toggle navigation</span> <span
					class="hamburger-bar"></span>
			</button>
			<button type="button" class="navbar-toggle collapsed"
				data-target="#site-navbar-collapse" data-toggle="collapse">
				<i class="icon md-more" aria-hidden="true"></i>
			</button>
			<div class="navbar-brand navbar-brand-center site-gridmenu-toggle"
				data-toggle="gridmenu">
				<img class="navbar-brand-logo" src="../../assets/images/logo.png"
					title="Everis Brazil"> <span class="navbar-brand-text">
					Everis Brazil</span>
			</div>
			<button type="button" class="navbar-toggle collapsed"
				data-target="#site-navbar-search" data-toggle="collapse">
				<span class="sr-only">Toggle Search</span> <i class="icon md-search"
					aria-hidden="true"></i>
			</button>
		</div>
		<div class="navbar-container container-fluid">
			<!-- Navbar Collapse -->
			<div class="collapse navbar-collapse navbar-collapse-toolbar"
				id="site-navbar-collapse">
				<!-- Navbar Toolbar -->
				<ul class="nav navbar-toolbar">
					<li class="hidden-float" id="toggleMenubar"><a
						data-toggle="menubar" href="#" role="button"> <i
							class="icon hamburger hamburger-arrow-left"> <span
								class="sr-only">Toggle menubar</span> <span
								class="hamburger-bar"></span>
						</i>
					</a></li>
					<li class="hidden-xs" id="toggleFullscreen"><a
						class="icon icon-fullscreen" data-toggle="fullscreen" href="#"
						role="button"> <span class="sr-only">Toggle fullscreen</span>
					</a></li>
					<li class="hidden-float"><a class="icon md-search"
						data-toggle="collapse" href="#" data-target="#site-navbar-search"
						role="button"> <span class="sr-only">Toggle Search</span>
					</a></li>
					<ul class="dropdown-menu" role="menu">
						<li role="presentation">
							<div class="mega-content">
								<div class="row">
									<div class="col-sm-4">
										<h5>UI Kit</h5>
										<ul class="blocks-2">
											<li class="mega-menu margin-0">
												<ul class="list-icons">
													<li><i class="md-chevron-right" aria-hidden="true"></i>
														<a href="../advanced/animation.html">Animation</a></li>
													<li><i class="md-chevron-right" aria-hidden="true"></i>
														<a href="../uikit/buttons.html">Buttons</a></li>
													<li><i class="md-chevron-right" aria-hidden="true"></i>
														<a href="../uikit/colors.html">Colors</a></li>
													<li><i class="md-chevron-right" aria-hidden="true"></i>
														<a href="../uikit/dropdowns.html">Dropdowns</a></li>
													<li><i class="md-chevron-right" aria-hidden="true"></i>
														<a href="../uikit/icons.html">Icons</a></li>
													<li><i class="md-chevron-right" aria-hidden="true"></i>
														<a href="../advanced/lightbox.html">Lightbox</a></li>
												</ul>
											</li>
											<li class="mega-menu margin-0">
												<ul class="list-icons">
													<li><i class="md-chevron-right" aria-hidden="true"></i>
														<a href="../uikit/modals.html">Modals</a></li>
													<li><i class="md-chevron-right" aria-hidden="true"></i>
														<a href="../uikit/panel-structure.html">Panels</a></li>
													<li><i class="md-chevron-right" aria-hidden="true"></i>
														<a href="../structure/overlay.html">Overlay</a></li>
													<li><i class="md-chevron-right" aria-hidden="true"></i>
														<a href="../uikit/tooltip-popover.html ">Tooltips</a></li>
													<li><i class="md-chevron-right" aria-hidden="true"></i>
														<a href="../advanced/scrollable.html">Scrollable</a></li>
													<li><i class="md-chevron-right" aria-hidden="true"></i>
														<a href="../uikit/typography.html">Typography</a></li>
												</ul>
											</li>
										</ul>
									</div>
									<div class="col-sm-4">
										<h5>
											Media <span class="badge badge-success">4</span>
										</h5>
										<ul class="blocks-3">
											<li><a class="thumbnail margin-0"
												href="javascript:void(0)"> <img class="width-full"
													src="../../../global/photos/placeholder.png" alt="..." />
											</a></li>
											<li><a class="thumbnail margin-0"
												href="javascript:void(0)"> <img class="width-full"
													src="../../../global/photos/placeholder.png" alt="..." />
											</a></li>
											<li><a class="thumbnail margin-0"
												href="javascript:void(0)"> <img class="width-full"
													src="../../../global/photos/placeholder.png" alt="..." />
											</a></li>
											<li><a class="thumbnail margin-0"
												href="javascript:void(0)"> <img class="width-full"
													src="../../../global/photos/placeholder.png" alt="..." />
											</a></li>
											<li><a class="thumbnail margin-0"
												href="javascript:void(0)"> <img class="width-full"
													src="../../../global/photos/placeholder.png" alt="..." />
											</a></li>
											<li><a class="thumbnail margin-0"
												href="javascript:void(0)"> <img class="width-full"
													src="../../../global/photos/placeholder.png" alt="..." />
											</a></li>
										</ul>
									</div>
									<div class="col-sm-4">
										<h5 class="margin-bottom-0">Accordion</h5>
										<!-- Accordion -->
										<div class="panel-group panel-group-simple"
											id="siteMegaAccordion" aria-multiselectable="true"
											role="tablist">
											<div class="panel">
												<div class="panel-heading" id="siteMegaAccordionHeadingOne"
													role="tab">
													<a class="panel-title" data-toggle="collapse"
														href="#siteMegaCollapseOne"
														data-parent="#siteMegaAccordion" aria-expanded="false"
														aria-controls="siteMegaCollapseOne"> Collapsible Group
														Item #1 </a>
												</div>
												<div class="panel-collapse collapse"
													id="siteMegaCollapseOne"
													aria-labelledby="siteMegaAccordionHeadingOne"
													role="tabpanel">
													<div class="panel-body">De moveat laudatur vestra
														parum doloribus labitur sentire partes, eripuit praesenti
														congressus ostendit alienae, voluptati ornateque accusamus
														clamat reperietur convicia albucius.</div>
												</div>
											</div>
											<div class="panel">
												<div class="panel-heading" id="siteMegaAccordionHeadingTwo"
													role="tab">
													<a class="panel-title collapsed" data-toggle="collapse"
														href="#siteMegaCollapseTwo"
														data-parent="#siteMegaAccordion" aria-expanded="false"
														aria-controls="siteMegaCollapseTwo"> Collapsible Group
														Item #2 </a>
												</div>
												<div class="panel-collapse collapse"
													id="siteMegaCollapseTwo"
													aria-labelledby="siteMegaAccordionHeadingTwo"
													role="tabpanel">
													<div class="panel-body">Praestabiliorem. Pellat
														excruciant legantur ullum leniter vacare foris voluptate
														loco ignavi, credo videretur multoque choro fatemur mortis
														animus adoptionem, bello statuat expediunt naturales.</div>
												</div>
											</div>
											<div class="panel">
												<div class="panel-heading"
													id="siteMegaAccordionHeadingThree" role="tab">
													<a class="panel-title collapsed" data-toggle="collapse"
														href="#siteMegaCollapseThree"
														data-parent="#siteMegaAccordion" aria-expanded="false"
														aria-controls="siteMegaCollapseThree"> Collapsible
														Group Item #3 </a>
												</div>
												<div class="panel-collapse collapse"
													id="siteMegaCollapseThree"
													aria-labelledby="siteMegaAccordionHeadingThree"
													role="tabpanel">
													<div class="panel-body">Horum, antiquitate perciperet
														d conspectum locus obruamus animumque perspici probabis
														suscipere. Desiderat magnum, contenta poena desiderant
														concederetur menandri damna disputandum corporum.</div>
												</div>
											</div>
										</div>
										<!-- End Accordion -->
									</div>
								</div>
							</div>
						</li>
					</ul>
					</li>
				</ul>
				<!-- End Navbar Toolbar -->
				<!-- Navbar Toolbar Right -->
				<ul class="nav navbar-toolbar navbar-right navbar-toolbar-right">
					<li class="dropdown"><a class="navbar-avatar dropdown-toggle"
						data-toggle="dropdown" href="#" aria-expanded="false"
						data-animation="scale-up" role="button"> <span
							class="avatar avatar-online"> <img
								src="../../../global/portraits/5.jpg" alt="..."> <i></i>
						</span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li role="presentation"><a href="javascript:void(0)"
								role="menuitem"><i class="icon md-account"
									aria-hidden="true"></i> Profile</a></li>
							<li role="presentation"><a href="javascript:void(0)"
								role="menuitem"><i class="icon md-card" aria-hidden="true"></i>
									Billing</a></li>
							<li role="presentation"><a href="javascript:void(0)"
								role="menuitem"><i class="icon md-settings"
									aria-hidden="true"></i> Settings</a></li>
							<li class="divider" role="presentation"></li>
							<li role="presentation"><a href="javascript:void(0)"
								role="menuitem"><i class="icon md-power" aria-hidden="true"></i>
									Logout</a></li>
						</ul></li>
					<li class="dropdown"><a data-toggle="dropdown"
						href="javascript:void(0)" title="Notifications"
						aria-expanded="false" data-animation="scale-up" role="button">
							<i class="icon md-notifications" aria-hidden="true"></i> <span
							class="badge badge-danger up">4</span>
					</a></li>
					<li class="dropdown"><a data-toggle="dropdown"
						href="javascript:void(0)" title="Messages" aria-expanded="false"
						data-animation="scale-up" role="button"> <i
							class="icon md-email" aria-hidden="true"></i> <span
							class="badge badge-info up">3</span>
					</a>
						<ul class="dropdown-menu dropdown-menu-right dropdown-menu-media"
							role="menu">
							<li class="list-group" role="presentation">
								<div data-role="container">
									<div data-role="content">
										<a class="list-group-item" href="javascript:void(0)"
											role="menuitem">
											<div class="media">
												<div class="media-left padding-right-10">
													<span class="avatar avatar-sm avatar-online"> <img
														src="../../../global/portraits/2.jpg" alt="..." /> <i></i>
													</span>
												</div>
												<div class="media-body">
													<h6 class="media-heading">Mary Adams</h6>
													<div class="media-meta">
														<time datetime="2015-06-17T20:22:05+08:00">30
															minutes ago</time>
													</div>
													<div class="media-detail">Anyways, i would like just
														do it</div>
												</div>
											</div>
										</a> <a class="list-group-item" href="javascript:void(0)"
											role="menuitem">
											<div class="media">
												<div class="media-left padding-right-10">
													<span class="avatar avatar-sm avatar-off"> <img
														src="../../../global/portraits/3.jpg" alt="..." /> <i></i>
													</span>
												</div>
												<div class="media-body">
													<h6 class="media-heading">Caleb Richards</h6>
													<div class="media-meta">
														<time datetime="2015-06-17T12:30:30+08:00">12 hours
															ago</time>
													</div>
													<div class="media-detail">I checheck the document.
														But there seems</div>
												</div>
											</div>
										</a> <a class="list-group-item" href="javascript:void(0)"
											role="menuitem">
											<div class="media">
												<div class="media-left padding-right-10">
													<span class="avatar avatar-sm avatar-busy"> <img
														src="../../../global/portraits/4.jpg" alt="..." /> <i></i>
													</span>
												</div>
												<div class="media-body">
													<h6 class="media-heading">June Lane</h6>
													<div class="media-meta">
														<time datetime="2015-06-16T18:38:40+08:00">2 days
															ago</time>
													</div>
													<div class="media-detail">Lorem ipsum Id consectetur
														et minim</div>
												</div>
											</div>
										</a> <a class="list-group-item" href="javascript:void(0)"
											role="menuitem">
											<div class="media">
												<div class="media-left padding-right-10">
													<span class="avatar avatar-sm avatar-away"> <img
														src="../../../global/portraits/5.jpg" alt="..." /> <i></i>
													</span>
												</div>
												<div class="media-body">
													<h6 class="media-heading">Edward Fletcher</h6>
													<div class="media-meta">
														<time datetime="2015-06-15T20:34:48+08:00">3 days
															ago</time>
													</div>
													<div class="media-detail">Dolor et irure cupidatat
														commodo nostrud nostrud.</div>
												</div>
											</div>
										</a>
									</div>
								</div>
							</li>
							<li class="dropdown-menu-footer" role="presentation"><a
								class="dropdown-menu-footer-btn" href="javascript:void(0)"
								role="button"> <i class="icon md-settings"
									aria-hidden="true"></i>
							</a> <a href="javascript:void(0)" role="menuitem"> See all
									messages </a></li>
						</ul></li>
				</ul>
				<!-- End Navbar Toolbar Right -->
			</div>
			<!-- End Navbar Collapse -->
			<!-- Site Navbar Seach -->
			<div class="collapse navbar-search-overlap" id="site-navbar-search">
				<form role="search">
					<div class="form-group">
						<div class="input-search">
							<i class="input-search-icon md-search" aria-hidden="true"></i> <input
								type="text" class="form-control" name="site-search"
								placeholder="Search...">
							<button type="button" class="input-search-close icon md-close"
								data-target="#site-navbar-search" data-toggle="collapse"
								aria-label="Close"></button>
						</div>
					</div>
				</form>
			</div>
			<!-- End Site Navbar Seach -->
		</div>
	</nav>
	<div class="site-menubar">
		<ul class="site-menu">
			<li class="site-menu-item"><a class="animsition-link"
				href="../../../"> <i class="site-menu-icon md-view-dashboard"
					aria-hidden="true"></i> <span class="site-menu-title">Dashboard</span>
			</a></li>
			<li class="site-menu-item has-sub"><a href="javascript:void(0)">
					<i class="site-menu-icon md-view-compact" aria-hidden="true"></i> <span
					class="site-menu-title">Cadastrar Demanda</span> <span
					class="site-menu-arrow"></span>
			</a>
				<ul class="site-menu-sub">
					<li class="site-menu-item"><a class="animsition-link"
						href="../layouts/menu-collapsed.html"> <span
							class="site-menu-title">Nova Demanda</span>
					</a></li>
					<li class="site-menu-item"><a class="animsition-link"
						href="../layouts/grids.html"> <span class="site-menu-title">Editar
								Demanda</span>
					</a></li>
					<li class="site-menu-item"><a class="animsition-link"
						href="../layouts/layout-grid.html"> <span
							class="site-menu-title">Excluir Demanda</span>
					</a></li>
				</ul></li>
			<li class="site-menu-item has-sub active"><a
				href="javascript:void(0)"> <i
					class="site-menu-icon md-google-pages" aria-hidden="true"></i> <span
					class="site-menu-title">Cadastrar Usuário</span> <span
					class="site-menu-arrow"></span>
			</a>
				<ul class="site-menu-sub">


					<li class="site-menu-item"><a class="animsition-link"
						href="../pages/register.html"> <span class="site-menu-title">Novo
								Usuário</span>
					</a></li>

					<li class="site-menu-item"><a class="animsition-link"
						href="../pages/register-v2.html"> <span
							class="site-menu-title">Novo Gerente</span>
					</a></li>

					<li class="site-menu-item"><a class="animsition-link"
						href="../pages/login.html"> <span class="site-menu-title">Login</span>
					</a></li>

					<li class="site-menu-item active"><a class="animsition-link"
						href="../pages/profile.html"> <span class="site-menu-title">Perfil</span>
					</a></li>

					<li class="site-menu-item"><a class="animsition-link"
						href="../pages/forgot-password.html"> <span
							class="site-menu-title">Esqueci Minha Senha</span>
					</a></li>
				</ul></li>

			<li class="site-menu-item has-sub"><a href="javascript:void(0)">
					<i class="site-menu-icon md-chart" aria-hidden="true"></i> <span
					class="site-menu-title">DashBoard Type</span> <span
					class="site-menu-arrow"></span>
			</a>
				<ul class="site-menu-sub">
					<li class="site-menu-item"><a class="animsition-link"
						href="../charts/chartjs.html"> <span class="site-menu-title">DashBoard
								Individual</span>
					</a></li>
					<li class="site-menu-item"><a class="animsition-link"
						href="../charts/gauges.html"> <span class="site-menu-title">DashBoard
								Geral</span>
					</a></li>
				</ul>
	</div>
	<div class="site-gridmenu">
		<div>
			<div>
				<ul>
					<li><a href="../apps/mailbox/mailbox.html"> <i
							class="icon md-email"></i> <span>Mailbox</span>
					</a></li>
					<li><a href="../apps/calendar/calendar.html"> <i
							class="icon md-calendar"></i> <span>Calendar</span>
					</a></li>
					<li><a href="../apps/contacts/contacts.html"> <i
							class="icon md-account"></i> <span>Contacts</span>
					</a></li>
					<li><a href="../apps/media/overview.html"> <i
							class="icon md-videocam"></i> <span>Media</span>
					</a></li>
					<li><a href="../apps/documents/categories.html"> <i
							class="icon md-receipt"></i> <span>Documents</span>
					</a></li>
					<li><a href="../apps/projects/projects.html"> <i
							class="icon md-image"></i> <span>Project</span>
					</a></li>
					<li><a href="../apps/forum/forum.html"> <i
							class="icon md-comments"></i> <span>Forum</span>
					</a></li>
					<li><a href="../../../"> <i class="icon md-view-dashboard"></i>
							<span>Dashboard</span>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Page -->
	<div class="page animsition">
		<div class="page-content container-fluid">
			<div class="row">
				<div class="col-md-3">
					<!-- Page Widget -->
					<div class="widget widget-shadow text-center">
						<div class="widget-header">
							<div class="widget-header-content">
								<a class="avatar avatar-lg" href="javascript:void(0)"> <img
									src="../../../global/portraits/5.jpg" alt="...">
								</a>
								<h4 class="profile-user">Terrance arnold</h4>
								<p class="profile-job">Art director</p>

							</div>
						</div>
					</div>
					<!-- End Page Widget -->
				</div>
				<div class="col-md-9">
					<!-- Panel -->
					<div class="panel">
						<div class="panel-body nav-tabs-animate">
							<ul class="nav nav-tabs nav-tabs-line" data-plugin="nav-tabs"
								role="tablist">
								<li class="active" role="presentation"><a data-toggle="tab"
									href="#activities" aria-controls="activities" role="tab">Activities
										<span class="badge badge-danger">3</span>
								</a></li>
								<li role="presentation"><a data-toggle="tab"
									href="#profile" aria-controls="profile" role="tab">Profile</a></li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane active animation-slide-left"
									id="activities" role="tabpanel">
									<ul class="list-group">
										<li class="list-group-item">
											<div class="media">
												<div class="media-left">
													<a class="avatar" href="javascript:void(0)"> <img
														class="img-responsive"
														src="../../../global/portraits/2.jpg" alt="...">
													</a>
												</div>
												<div class="media-body">
												<h1> Demandas Cadastradas </h1>

<% 
	String nome = (String) session.getAttribute("user");
	if(nome == null){
		nome = "";
	}
	DaoGeneric<Rms> daoGeneric = new DaoGeneric<Rms>();
	List<Rms> listaRms = new ArrayList<Rms>();
	listaRms = daoGeneric.buscarRms(Rms.class, nome);%>
												<form action="../../../UpdateRms" method="POST">
													<table id="tableProfile">
													<thead>
														<tr>
															<td><% out.println(nome); %></td>															
															<td>ID Demanda </td>
															<td>Descrição</td>
															<td>Esteira</td>
															<td>Data Release</td>
															<td>Status</td>
															<td>View</td>
															<td>Update</td>
															<td>Delete</td>
														</tr>
													</thead>
													<tbody>
														
															<%	
														int j = 0;
														for(int i = 0; i < listaRms.size(); i++){
															Rms rms = (Rms) listaRms.get(i);
													 		j++;
															%>
															<tr>
																<td><%out.println(j);%></td>
																<td><% out.println(rms.getId_Demanda()); %></td>
																<td><% out.println(rms.getDescricao_demanda()); %></td>
																<td><% out.println(rms.getEsteira()); %></td>
																<td><% out.println(rms.getDt_release()); %></td>
																<td><% out.println(rms.getDemanda()); %></td>
																<td><a href="../../../UpdateRms?idDemanda=<%out.println(rms.getId_Demanda());%>"><img src="../../../global/img/view.png" title="View"/></a></td>
																<td><a href="../../../UpdateRms?idDemanda=<%out.println(rms.getId_Demanda());%>"><img src="../../../global/img/refresh.png"title="Update"/></a></td>
																<td><a href="../../../ExcluirRms?idDemanda=<%out.println(rms.getId_Demanda());%>"><img src="../../../global/img/x.png" title="Remove"/></a></td>
															</tr>	
														<% } %>
													</tbody>
													</table>
												</form>
												</div>
											</div>
										</li>


									</ul>
									<a class="btn btn-block btn-default profile-readMore"
										href="javascript:void(0)" role="button">Show more</a>
								</div>
								<div class="tab-pane animation-slide-left" id="profile"
									role="tabpanel">
									<ul class="list-group">

										<li class="list-group-item">
											<div class="media">
												<div class="media-left">
													<a class="avatar" href="javascript:void(0)"> <img
														class="img-responsive"
														src="../../../global/portraits/2.jpg" alt="...">
													</a>
												</div>
												<div class="media-body">
													<h4 class="media-heading">
														Ida Fleming <span>posted an updated</span>
													</h4>
													<small>active 14 minutes ago</small>
													<div class="profile-brief"> "Check if it can be
														corrected with overflow : hidden"</div>
												</div>
											</div>
										</li>
									</ul>
								</div>
								<div class="tab-pane animation-slide-left" id="messages"
									role="tabpanel">
									<ul class="list-group">
										<li class="list-group-item">
											<div class="media">
												<div class="media-left">
													<a class="avatar" href="javascript:void(0)"> <img
														class="img-responsive"
														src="../../../global/portraits/2.jpg" alt="...">
													</a>
												</div>
												<div class="media-body">
													<h4 class="media-heading">
														Ida Fleming <span>posted an updated</span>
													</h4>
													<small>active 14 minutes ago</small>
													<div class="profile-brief">Check if it can be
														corrected with overflow : hidden</div>
												</div>
											</div>
										</li>
										<li class="list-group-item">
											<div class="media media-lg">
												<div class="media-left">
													<a class="avatar" href="javascript:void(0)"> <img
														class="img-responsive"
														src="../../../global/portraits/5.jpg" alt="...">
													</a>
												</div>
												<div class="media-body">
													<h4 class="media-heading">
														Terrance Arnold <span>posted a new blog</span>
													</h4>
													<small>active 14 minutes ago</small>
													<div class="profile-brief">
														<div class="media">
															<a class="media-left"> <img class="media-object"
																src="../../../global/photos/placeholder.png" alt="...">
															</a>
															<div class="media-body padding-left-20">
																<h4 class="media-heading">Getting Started</h4>
																<p>Lorem ipsum dolor sit amet, consectetur
																	adipiscing elit. Integer nec odio. Praesent libero. Sed
																	cursus ante dapibus diam. Sed nisi. Nulla quis sem at
																	nibh elementum imperdiet. Duis sagittis ipsum. Praesent
																	mauris.</p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</li>
										<li class="list-group-item">
											<div class="media">
												<div class="media-left">
													<a class="avatar" href="javascript:void(0)"> <img
														class="img-responsive"
														src="../../../global/portraits/4.jpg" alt="...">
													</a>
												</div>
												<div class="media-body">
													<h4 class="media-heading">
														Owen Hunt <span>posted a new note</span>
													</h4>
													<small>active 14 minutes ago</small>
													<div class="profile-brief">Lorem ipsum dolor sit
														amet, consectetur adipiscing elit. Integer nec odio.
														Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
														Nulla quis sem at nibh elementum imperdiet. Duis sagittis
														ipsum. Praesent mauris. Fusce nec tellus sed augue semper
														porta. Mauris massa.</div>
												</div>
											</div>
										</li>
										<li class="list-group-item">
											<div class="media">
												<div class="media-left">
													<a class="avatar" href="javascript:void(0)"> <img
														class="img-responsive"
														src="../../../global/portraits/3.jpg" alt="...">
													</a>
												</div>
												<div class="media-body">
													<h4 class="media-heading">
														Julius <span>posted an updated</span>
													</h4>
													<small>active 14 minutes ago</small>
													<div class="profile-brief">Lorem ipsum dolor sit
														amet, consectetur adipiscing elit. Integer nec odio.
														Praesent libero. Sed cursus ante dapibus diam.</div>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- End Panel -->
				</div>
			</div>
		</div>
	</div>
	<!-- End Page -->
	<!-- Footer -->
	<footer class="site-footer">
		<div class="site-footer-legal">
			© 2017 <a href="http://everis.com">Everis Brazil</a>
		</div>
		<div class="site-footer-right">
			Crafted with <i class="red-600 icon md-favorite"></i> by <a
				href="http://everis.com">Everis Brazil</a>
		</div>
	</footer>
	<!-- Core  -->
	<script src="../../../global/vendor/jquery/jquery.js"></script>
	<script src="../../../global/vendor/bootstrap/bootstrap.js"></script>
	<script src="../../../global/vendor/animsition/animsition.js"></script>
	<script src="../../../global/vendor/asscroll/jquery-asScroll.js"></script>
	<script src="../../../global/vendor/mousewheel/jquery.mousewheel.js"></script>
	<script
		src="../../../global/vendor/asscrollable/jquery.asScrollable.all.js"></script>
	<script
		src="../../../global/vendor/ashoverscroll/jquery-asHoverScroll.js"></script>
	<script src="../../../global/vendor/waves/waves.js"></script>
	<!-- Plugins -->
	<script
		src="../../../global/vendor/jquery-mmenu/jquery.mmenu.min.all.js"></script>
	<script src="../../../global/vendor/switchery/switchery.min.js"></script>
	<script src="../../../global/vendor/intro-js/intro.js"></script>
	<script src="../../../global/vendor/screenfull/screenfull.js"></script>
	<script src="../../../global/vendor/slidepanel/jquery-slidePanel.js"></script>
	<!-- Scripts -->
	<script src="../../../global/js/core.js"></script>
	<script src="../../assets/js/site.js"></script>
	<script src="../../assets/js/sections/menu.js"></script>
	<script src="../../assets/js/sections/menubar.js"></script>
	<script src="../../assets/js/sections/gridmenu.js"></script>
	<script src="../../assets/js/sections/sidebar.js"></script>
	<script src="../../../global/js/configs/config-colors.js"></script>
	<script src="../../assets/js/configs/config-tour.js"></script>
	<script src="../../../global/js/components/asscrollable.js"></script>
	<script src="../../../global/js/components/animsition.js"></script>
	<script src="../../../global/js/components/slidepanel.js"></script>
	<script src="../../../global/js/components/switchery.js"></script>
	<script src="../../../global/js/components/tabs.js"></script>
	<script>
		(function(document, window, $) {
			'use strict';
			var Site = window.Site;
			$(document).ready(function() {
				Site.run();
			});
		})(document, window, jQuery);
	</script>
</body>
</html>