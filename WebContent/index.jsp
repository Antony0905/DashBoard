<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
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
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
  <meta name="description" content="bootstrap admin template">
  <meta name="author" content="">
  <title>Dashboard | Everis Brazil Admin </title>
  <link rel="apple-touch-icon" href="mmenu/assets/images/apple-touch-icon.png">
  <link rel="shortcut icon" href="mmenu/assets/images/favicon.ico">
  <!-- Stylesheets -->
  <link rel="stylesheet" href="global/css/bootstrap.min.css">
  <link rel="stylesheet" href="global/mycss/index.css">
  <link rel="stylesheet" href="global/css/bootstrap-extend.min.css">
  <link rel="stylesheet" href="mmenu/assets/css/site.min.css">
  <!-- Plugins -->
  <link rel="stylesheet" href="global/vendor/animsition/animsition.css">
  <link rel="stylesheet" href="global/vendor/asscrollable/asScrollable.css">
  <link rel="stylesheet" href="global/vendor/switchery/switchery.css">
  <link rel="stylesheet" href="global/vendor/intro-js/introjs.css">
  <link rel="stylesheet" href="global/vendor/slidepanel/slidePanel.css">
  <link rel="stylesheet" href="global/vendor/jquery-mmenu/jquery-mmenu.css">
  <link rel="stylesheet" href="global/vendor/flag-icon-css/flag-icon.css">
  <link rel="stylesheet" href="global/vendor/waves/waves.css">
  <link rel="stylesheet" href="global/vendor/chartist-js/chartist.css">
  <link rel="stylesheet" href="global/vendor/jvectormap/jquery-jvectormap.css">
  <link rel="stylesheet" href="global/vendor/chartist-plugin-tooltip/chartist-plugin-tooltip.css">
  <!-- Fonts -->
  <link rel="stylesheet" href="global/fonts/material-design/material-design.min.css">
  <link rel="stylesheet" href="global/fonts/brand-icons/brand-icons.min.css">
  <!--[if lt IE 9]>
    <script src="global/vendor/html5shiv/html5shiv.min.js"></script>
    <![endif]-->
  <!--[if lt IE 10]>
    <script src="global/vendor/media-match/media.match.min.js"></script>
    <script src="global/vendor/respond/respond.min.js"></script>
    <![endif]-->
  <!-- Scripts -->
  <script src="global/vendor/modernizr/modernizr.js"></script>
  <script src="global/vendor/breakpoints/breakpoints.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
  <script>
  Breakpoints();
  </script>
<script type="text/javascript">

	function abrirModalRmsSucesso(){
		document.getElementById('abrirModal').click();
	}
	
	function abrirModalAtualizar(){
		document.getElementById('abrirModalAtualizar').click();
	}
	
	function abrirModalUsuario(){
		document.getElementById('abrirModalUsuario').click();
	}
	
</script>
</head>

<%	Boolean rmsSucesso = (Boolean) session.getAttribute("rmsSucesso");
	Boolean rmsAtualizadoSucesso = (Boolean) session.getAttribute("rmsAtualizadoSucesso");
	Boolean usuarioSucesso = (Boolean) session.getAttribute("usuarioSucesso");
	if(rmsSucesso == null){
		rmsSucesso = false;
	}
	if(rmsAtualizadoSucesso == null){
		rmsAtualizadoSucesso = false;
	}
	if(usuarioSucesso == null){
		usuarioSucesso = false;
	}
%>
<%if(rmsSucesso){ %>
<body class="site-navbar-small dashboard" onload="abrirModalRmsSucesso()">
<%}else if(rmsAtualizadoSucesso){ %>
<body class="site-navbar-small dashboard" onload="abrirModalAtualizar()">
<%}else if(usuarioSucesso){ %>
<body class="site-navbar-small dashboard" onload="abrirModalUsuario()">
<%}else{ %>  
<body class="site-navbar-small dashboard">
<%} session.removeAttribute("rmsSucesso");
	session.removeAttribute("rmsAtualizadoSucesso");
	session.removeAttribute("usuarioSucesso");%>
  
  <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
  <nav class="site-navbar navbar navbar-default navbar-fixed-top navbar-mega" role="navigation">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle hamburger hamburger-close navbar-toggle-left hided"
      data-toggle="menubar">
        <span class="sr-only">Toggle navigation</span>
        <span class="hamburger-bar"></span>
      </button>
      <button type="button" class="navbar-toggle collapsed" data-target="#site-navbar-collapse"
      data-toggle="collapse">
        <i class="icon md-more" aria-hidden="true"></i>
      </button>
      <div class="navbar-brand navbar-brand-center site-gridmenu-toggle" data-toggle="gridmenu">
        <img class="navbar-brand-logo" src="mmenu/assets/images/logo.png" title="Everis Brazil">
        <span class="navbar-brand-text"> Everis Brazil </span>
      </div>
      <button type="button" class="navbar-toggle collapsed" data-target="#site-navbar-search"
      data-toggle="collapse">
        <span class="sr-only">Toggle Search</span>
        <i class="icon md-search" aria-hidden="true"></i>
      </button>
    </div>
    <div class="navbar-container container-fluid">
      <!-- Navbar Collapse -->
      <div class="collapse navbar-collapse navbar-collapse-toolbar" id="site-navbar-collapse">
        <!-- Navbar Toolbar -->
        <ul class="nav navbar-toolbar">
          <li class="hidden-float" id="toggleMenubar">
            <a data-toggle="menubar" href="#" role="button">
              <i class="icon hamburger hamburger-arrow-left">
                  <span class="sr-only">Toggle menubar</span>
                  <span class="hamburger-bar"></span>
                </i>
            </a>
          </li>
          <li class="hidden-xs" id="toggleFullscreen">
            <a class="icon icon-fullscreen" data-toggle="fullscreen" href="#" role="button">
              <span class="sr-only">Toggle fullscreen</span>
            </a>
          </li>
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
                              <a href="advanced/animation.html">Animation</a>
                            </li>
                            <li><i class="md-chevron-right" aria-hidden="true"></i>
                              <a href="uikit/buttons.html">Buttons</a>
                            </li>
                            <li><i class="md-chevron-right" aria-hidden="true"></i>
                              <a href="uikit/colors.html">Colors</a>
                            </li>
                            <li><i class="md-chevron-right" aria-hidden="true"></i>
                              <a href="uikit/dropdowns.html">Dropdowns</a>
                            </li>
                            <li><i class="md-chevron-right" aria-hidden="true"></i>
                              <a href="uikit/icons.html">Icons</a>
                            </li>
                            <li><i class="md-chevron-right" aria-hidden="true"></i>
                              <a href="advanced/lightbox.html">Lightbox</a>
                            </li>
                          </ul>
                        </li>
                        <li class="mega-menu margin-0">
                          <ul class="list-icons">
                            <li><i class="md-chevron-right" aria-hidden="true"></i>
                              <a href="uikit/modals.html">Modals</a>
                            </li>
                            <li><i class="md-chevron-right" aria-hidden="true"></i>
                              <a href="uikit/panel-structure.html">Panels</a>
                            </li>
                            <li><i class="md-chevron-right" aria-hidden="true"></i>
                              <a href="structure/overlay.html">Overlay</a>
                            </li>
                            <li><i class="md-chevron-right" aria-hidden="true"></i>
                              <a href="uikit/tooltip-popover.html ">Tooltips</a>
                            </li>
                            <li><i class="md-chevron-right" aria-hidden="true"></i>
                              <a href="advanced/scrollable.html">Scrollable</a>
                            </li>
                            <li><i class="md-chevron-right" aria-hidden="true"></i>
                              <a href="uikit/typography.html">Typography</a>
                            </li>
                          </ul>
                        </li>
                      </ul>
                    </div>
                    <div class="col-sm-4">
                      <h5>Media
                        <span class="badge badge-success">4</span>
                      </h5>
                      <ul class="blocks-3">
                        <li>
                          <a class="thumbnail margin-0" href="javascript:void(0)">
                            <img class="width-full" src="global/photos/placeholder.png" alt="..." />
                          </a>
                        </li>
                        <li>
                          <a class="thumbnail margin-0" href="javascript:void(0)">
                            <img class="width-full" src="global/photos/placeholder.png" alt="..." />
                          </a>
                        </li>
                        <li>
                          <a class="thumbnail margin-0" href="javascript:void(0)">
                            <img class="width-full" src="global/photos/placeholder.png" alt="..." />
                          </a>
                        </li>
                        <li>
                          <a class="thumbnail margin-0" href="javascript:void(0)">
                            <img class="width-full" src="global/photos/placeholder.png" alt="..." />
                          </a>
                        </li>
                        <li>
                          <a class="thumbnail margin-0" href="javascript:void(0)">
                            <img class="width-full" src="global/photos/placeholder.png" alt="..." />
                          </a>
                        </li>
                        <li>
                          <a class="thumbnail margin-0" href="javascript:void(0)">
                            <img class="width-full" src="global/photos/placeholder.png" alt="..." />
                          </a>
                        </li>
                      </ul>
                    </div>
                    <div class="col-sm-4">
                      <h5 class="margin-bottom-0">Accordion</h5>
                      <!-- Accordion -->
                      <div class="panel-group panel-group-simple" id="siteMegaAccordion" aria-multiselectable="true"
                      role="tablist">
                        <div class="panel">
                          <div class="panel-heading" id="siteMegaAccordionHeadingOne" role="tab">
                            <a class="panel-title" data-toggle="collapse" href="#siteMegaCollapseOne" data-parent="#siteMegaAccordion"
                            aria-expanded="false" aria-controls="siteMegaCollapseOne">
                                Collapsible Group Item #1
                              </a>
                          </div>
                          <div class="panel-collapse collapse" id="siteMegaCollapseOne" aria-labelledby="siteMegaAccordionHeadingOne"
                          role="tabpanel">
                            <div class="panel-body">
                              De moveat laudatur vestra parum doloribus labitur sentire partes, eripuit praesenti
                              congressus ostendit alienae, voluptati ornateque
                              accusamus clamat reperietur convicia albucius.
                            </div>
                          </div>
                        </div>
                        <div class="panel">
                          <div class="panel-heading" id="siteMegaAccordionHeadingTwo" role="tab">
                            <a class="panel-title collapsed" data-toggle="collapse" href="#siteMegaCollapseTwo"
                            data-parent="#siteMegaAccordion" aria-expanded="false"
                            aria-controls="siteMegaCollapseTwo">
                                Collapsible Group Item #2
                              </a>
                          </div>
                          <div class="panel-collapse collapse" id="siteMegaCollapseTwo" aria-labelledby="siteMegaAccordionHeadingTwo"
                          role="tabpanel">
                            <div class="panel-body">
                              Praestabiliorem. Pellat excruciant legantur ullum leniter vacare foris voluptate
                              loco ignavi, credo videretur multoque choro fatemur
                              mortis animus adoptionem, bello statuat expediunt
                              naturales.
                            </div>
                          </div>
                        </div>
                        <div class="panel">
                          <div class="panel-heading" id="siteMegaAccordionHeadingThree" role="tab">
                            <a class="panel-title collapsed" data-toggle="collapse" href="#siteMegaCollapseThree"
                            data-parent="#siteMegaAccordion" aria-expanded="false"
                            aria-controls="siteMegaCollapseThree">
                                Collapsible Group Item #3
                              </a>
                          </div>
                          <div class="panel-collapse collapse" id="siteMegaCollapseThree" aria-labelledby="siteMegaAccordionHeadingThree"
                          role="tabpanel">
                            <div class="panel-body">
                              Horum, antiquitate perciperet d conspectum locus obruamus animumque perspici probabis
                              suscipere. Desiderat magnum, contenta poena desiderant
                              concederetur menandri damna disputandum corporum.
                            </div>
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
        <ul class="nav navbar-toolbar navbar-right navbar-toolbar-right" style="padding-right: 20px;">
          <li class="h1">
             <% String nome = (String) session.getAttribute("user"); 
									            if(nome != null){
									            %> <p class="h1user">	<% out.print("Bem vindo " + nome); %> </p>
									            <%}else{
									            	%> <p class="h2user"> <% out.print("Usuário Não Logado");  %> </p>
				          </li>
          <a href="mmenu/html/pages/login.jsp"><img src="global/img/login.png" style="padding-top: 15px;padding-right:5px;width: 140px;"/></a>  
									            <% }%>
          </li>
        <ul class="nav navbar-toolbar navbar-right navbar-toolbar-right">
          <li class="dropdown" style="margin-right: 25px;">
            <a class="navbar-avatar dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false"
            data-animation="scale-up" role="button">
              <span class="avatar avatar-online">
                <img src="global/portraits/5.jpg" alt="...">
                <i></i>
              </span>
            </a>
            <ul class="dropdown-menu" role="menu">
              <li role="presentation">
                <a href="mmenu/html/pages/profile.jsp" role="menuitem"><i class="icon md-account" aria-hidden="true"></i> Profile</a>
              </li>
              <li role="presentation">
                <a href="javascript:void(0)" role="menuitem"><i class="icon md-card" aria-hidden="true"></i> Billing</a>
              </li>
              <li role="presentation">
                <a href="javascript:void(0)" role="menuitem"><i class="icon md-settings" aria-hidden="true"></i> Settings</a>
              </li>
              <li class="divider" role="presentation"></li>
              <li role="presentation">
                <a href="jsp/sair.jsp" role="menuitem"><i class="icon md-power" aria-hidden="true"></i> Logout</a>
              </li>
            </ul>
          </li>
        </ul>
        <!-- End Navbar Toolbar Right -->
      </div>
      <!-- End Navbar Collapse -->
      <!-- Site Navbar Seach -->
      <div class="collapse navbar-search-overlap" id="site-navbar-search">
        <form role="search">
          <div class="form-group">
            <div class="input-search">
              <i class="input-search-icon md-search" aria-hidden="true"></i>
              <input type="text" class="form-control" name="site-search" placeholder="Search...">
              <button type="button" class="input-search-close icon md-close" data-target="#site-navbar-search"
              data-toggle="collapse" aria-label="Close"></button>
            </div>
          </div>
        </form>
      </div>
      <!-- End Site Navbar Seach -->
    </div>
  </nav>
  <div class="site-menubar">
    <ul class="site-menu">
      <li class="site-menu-item active">
        <a class="animsition-link" href="">
          <i class="site-menu-icon md-view-dashboard" aria-hidden="true"></i>
          <span class="site-menu-title">Dashboard</span>
        </a>
      </li>
      <li class="site-menu-item has-sub">
        <a href="javascript:void(0)">
          <i class="site-menu-icon md-view-compact" aria-hidden="true"></i>
          <span class="site-menu-title">Opções de Projeto</span>
          <span class="site-menu-arrow"></span>
        </a>
        <ul class="site-menu-sub">
          <li class="site-menu-item">
            <a class="animsition-link" href="mmenu/html/layouts/menu-collapsed.jsp">
              <span class="site-menu-title">Novo Projeto</span>
            </a>
          </li>
          <li class="site-menu-item">
            <a class="animsition-link" href="mmenu/html/layouts/grids.jsp">
              <span class="site-menu-title">Editar Projeto</span>
            </a>
          </li>

          <li class="site-menu-item">
            <a class="animsition-link" href="mmenu/html/layouts/view.jsp">
              <span class="site-menu-title">Visualizar Projeto</span>
            </a>
          </li>

        </ul>
      </li>
      <li class="site-menu-item has-sub">
        <a href="javascript:void(0)">
          <i class="icon md-account grey-600 font-size-20 vertical-align-bottom" aria-hidden="true" style="margin-bottom: 13px;margin-right: 17px;"></i>
          <span class="site-menu-title">Opções de Usuário</span>
          <span class="site-menu-arrow"></span>
        </a>
        <ul class="site-menu-sub">

          </li>
          <li class="site-menu-item">
            <a class="animsition-link" href="mmenu/html/pages/register.jsp">
              <span class="site-menu-title">Novo Usuário</span>
            </a>
          </li>

          <li class="site-menu-item">
            <a class="animsition-link" href="mmenu/html/pages/login.jsp">
              <span class="site-menu-title">Login</span>
            </a>
          </li>

          <li class="site-menu-item">
            <a class="animsition-link" href="mmenu/html/pages/profile.jsp">
              <span class="site-menu-title">Perfil</span>
            </a> 
          </li>

          <li class="site-menu-item">
            <a class="animsition-link" href="mmenu/html/pages/forgot-password.html">
              <span class="site-menu-title">Esqueci Minha Senha</span>
            </a>
          </li>
        </ul>


      <li class="site-menu-item has-sub">
        <a href="javascript:void(0)">
          <i class="site-menu-icon md-chart" aria-hidden="true"></i>
          <span class="site-menu-title">DashBoard Type</span>
          <span class="site-menu-arrow"></span>
        </a>
        <ul class="site-menu-sub">
          <li class="site-menu-item">
            <a class="animsition-link" href="mmenu/html/charts/chartjs.html">
              <span class="site-menu-title">DashBoard Individual</span>
            </a>
          </li>
          <li class="site-menu-item">
            <a class="animsition-link" href="mmenu/html/charts/gauges.html">
              <span class="site-menu-title">DashBoard Geral</span>
            </a>
          </li>
        </ul>
      </li>
      
    </ul>
  </div>
        <% 
		DaoGeneric<Rms> daoGeneric = new DaoGeneric<Rms>();
		List<Rms> listaRms = new ArrayList<Rms>();
		listaRms = daoGeneric.buscarRms(Rms.class, nome);
		int concluido = 0;
		int cancelado = 0;
		int andamento = 0;
		
		for(int i = 0; i < listaRms.size(); i++){
			Rms obj = listaRms.get(i);
			if(obj.getDemanda().equals("concluido")){
				concluido++;
			}
			if(obj.getDemanda().equals("cancelado")){
				cancelado++;
			}
			if(obj.getDemanda().equals("andamento")||obj.getDemanda().equals("estimando")||obj.getDemanda().equals("homologando")){
				andamento++;
			}
		}
		
		%>
  <!-- Page -->
  <div class="page animsition">
    <div class="page-content padding-30 container-fluid">
      <div class="row" data-plugin="matchHeight" data-by-row="true">
        <div class="col-lg-3 col-sm-6">
        
          <!-- Widget Linearea One-->
           <div class="widget widget-shadow" id="widgetLineareaOne">
            <div class="widget-content">
              <div class="padding-20 padding-top-10">
              
                <div class="clearfix">
                  <div class="grey-800 pull-left padding-vertical-10">
                    <i class="icon md-account grey-600 font-size-24 vertical-align-bottom margin-right-5"></i>Projetos <span style="color: #27d014;font-weight: bold;">Concluídos</span>
                    </div>
                  <span class="pull-right grey-700 font-size-30"><%out.print(concluido);%></span>
                </div>
                <div class="margin-bottom-20 grey-500">
                  <i class="icon md-long-arrow-up green-500 font-size-16"></i> Possui uma boa média
                </div>
                <div class="ct-chart height-50"></div>
              </div>
            </div>
          </div> 
          <!-- End Widget Linearea One --> 
        </div>
        <div class="col-lg-3 col-sm-6">
          <!-- Widget Linearea Two -->
          <div class="widget widget-shadow" id="widgetLineareaTwo">
            <div class="widget-content">
              <div class="padding-20 padding-top-10">
                <div class="clearfix">
                  <div class="grey-800 pull-left padding-vertical-10">
                    <i class="icon md-flash grey-600 font-size-24 vertical-align-bottom margin-right-5"></i>Projetos em <span style="color: #6060e4;font-weight: bold;">Andamento</span>
                  </div>
                  <span class="pull-right grey-700 font-size-30"><%out.print(andamento);%></span>
            	    </div>
                <div class="margin-bottom-20 grey-500">
                  <i class="icon md-long-arrow-up green-500 font-size-16"></i> Possui uma boa média
                </div>
                <div class="ct-chart height-50"></div>
              </div>
            </div>
          </div>
          <!-- End Widget Linearea Two -->
        </div>
        <div class="col-lg-3 col-sm-6">
          <!-- Widget Linearea Three -->
          <div class="widget widget-shadow" id="widgetLineareaThree">
            <div class="widget-content">
              <div class="padding-20 padding-top-10">
                <div class="clearfix">
                  <div class="grey-800 pull-left padding-vertical-10">
                    <i class="icon md-chart grey-600 font-size-24 vertical-align-bottom margin-right-5"></i> Projetos <span style="color: #dc1f1f;font-weight: bold;">Cancelados</span>
                  </div>
                  <span class="pull-right grey-700 font-size-30"><%out.print(cancelado);%></span>
                </div>
                <div class="margin-bottom-20 grey-500">
                  <i class="icon md-long-arrow-down red-500 font-size-16"></i> Margem alta de projetos cancelados.
                </div>
                <div class="ct-chart height-50"></div>
              </div>
            </div>
          </div>
          <!-- End Widget Linearea Three -->
        </div>
        <div class="col-lg-3 col-sm-6">
          <!-- Widget Linearea Four -->
          <div class="widget widget-shadow" id="widgetLineareaFour" style="height: 169px;">
            <div class="widget-content">
              <div class="padding-20 padding-top-10">
                <div class="clearfix">
                  <div class="grey-800 pull-left padding-vertical-10">
                  	<i class="icon md-flash grey-600 font-size-24 vertical-align-bottom margin-right-5"></i>Projetos <span style="color: #d2d217;font-weight: bold;">Cadastrados</span>
                  </div>
                  <span class="pull-right grey-700 font-size-30"><%out.print(listaRms.size());%></span>
                </div>
                <div class="margin-bottom-20 grey-500">
                  <i class="icon md-long-arrow-up green-500 font-size-16"></i> Possui uma boa média
                </div>
                </div>
                <div class="ct-chart height-50"></div>
              </div>
            </div>
          </div>
          <!-- End Widget Linearea Four -->
        </div>
        <div class="clearfix"></div>
        
        <div class="col-xlg-5 col-md-6">
          <!-- Panel Projects -->
          <div class="panel" id="projects">
            <div class="panel-heading">
              <h3 class="panel-title" style="font-weight: bold;">Linha do Tempo Projetos</h3>
            </div>
            <div class="table-responsive">
            	<canvas class="line-chart" style="padding-bottom:35px;"></canvas>
            	<script>
               		var ctx = document.getElementsByClassName("line-chart");
               		var chartGraph = new Chart(ctx, {
               			type: 'line',
               			data: {
               				labels: ["Jan","Fev","Mar","Abr","Mai","Jun","Jul","Ago","Set","Out","Nov","Dez",],
               				datasets: [{
               					label: "TAXA DE CLIQUES - 2017",
               					data: [5,10,5,14,20,15,6,14,8,12,15,5,10],
               					borderWidth: 6,
               					borderColor: 'rgba(77,166,253,0.85)',
               					backgroundColor: 'transparent',
               				},
               				{
               					label: "TAXA DE CLIQUES - 2018",
               					data: [9,14,11,6,5,4,3,8,11,10,13,18,6],
               					borderWidth: 6,
               					borderColor: 'rgba(6,204,6,0.85)',
               					backgroundColor: 'transparent',
               				}]
               			}
               		});
           		</script>
            </div>
          </div>
          <!-- End Panel Projects -->
        </div>
        <div class="col-xlg-7 col-md-6">
          <!-- Panel Projects Status -->
          <div class="panel" id="projects-status">
            <div class="panel-heading">
              <h3 class="panel-title" style="font-weight: bold;">
                Status dos Projetos
              </h3>
            </div>
            <div class="table-responsive">
              <table class="table table-striped">
                <thead>
                  <tr>
                    <td>ID</td>
                    <td>Project</td>
                    <td>Status</td>
                    <td class="text-left">Progress</td>
                  </tr>
                </thead>
                <tbody>
                <%for(int i=0; i<listaRms.size();i++){ 
                	Rms rms = (Rms) listaRms.get(i);%>
                  <tr>
                    <td><%out.print(rms.getId_Demanda()); %></td>
                    <td><%out.print(rms.getProjeto()); %></td>
                    <%if(rms.getDemanda().equals("desenvolvendo")){ %>
                    <td>
                      <span class="label label-primary">Desenvolvendo</span>
                    </td>
                    <%} %>
                    <%if(rms.getDemanda().equals("estimando")){ %>
                    <td>
                      <span class="label label-warning">Estimando</span>
                    </td>
                    <%} %>
                    <%if(rms.getDemanda().equals("homologando")){ %>
                    <td>
                      <span class="label label-info">Homologando</span>
                    </td>
                    <%} %>
                    <%if(rms.getDemanda().equals("concluido")){ %>
                    <td>
                      <span class="label label-default" style="color: white; background-color: #20de20;">Concluído</span>
                    </td>
                    <%} %>
                    <%if(rms.getDemanda().equals("cancelado")){ %>
                    <td>
                      <span class="label label-danger">Cancelado</span>
                    </td>
                    <%} %>
                    <td>
                     <div class="progress">
					  <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" 
					  aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:<%out.print(rms.getProgresso());%>%">
					    <%out.print(rms.getProgresso());%>%
					  </div>
					</div>
                    </td>
                  </tr>
				<%} %>
                </tbody>
              </table>
            
          <!-- Modal -->
            <button type="button" id="abrirModal" data-toggle="modal" data-target="#modalRmsCadastradaComSucesso" hidden="true"/>
		  	</button> 
				  
			<div class="modal fade" id="modalRmsCadastradaComSucesso" tabindex="-1" role="dialog" aria-labelledby="modalRmsCadastradaComSucesso" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="modalRmsCadastradaComSucesso">Atenção</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			         Projeto cadastrado com sucesso!
			      </div>
			      <div class="modal-footer">
			      <form>
			        <button type="button" class="btn btn-primary" data-dismiss="modal">Fechar</button>
			      </div>
			    </div>
			  </div>
			</div>
			<!-- End Modal -->
			
			<!-- Modal -->
            <button type="button" id="abrirModalAtualizar" data-toggle="modal" data-target="#modalRmsAtualizadoComSucesso" hidden="true"/>
		  	</button> 
				  
			<div class="modal fade" id="modalRmsAtualizadoComSucesso" tabindex="-1" role="dialog" aria-labelledby="modalRmsAtualizadoComSucesso" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="modalRmsAtualizadoComSucesso">Atenção</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			         Projeto atualizado com sucesso!
			      </div>
			      <div class="modal-footer">
			      <form>
			        <button type="button" class="btn btn-primary" data-dismiss="modal">Fechar</button>
			      </div>
			    </div>
			  </div>
			</div>
			<!-- End Modal -->
			
			<!-- Modal -->
            <button type="button" id="abrirModalUsuario" data-toggle="modal" data-target="#modalUsuarioCadastradoComSucesso" hidden="true"/>
		  	</button> 
				  
			<div class="modal fade" id="modalUsuarioCadastradoComSucesso" tabindex="-1" role="dialog" aria-labelledby="modalUsuarioCadastradoComSucesso" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="modalUsuarioCadastradoComSucesso">Atenção</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			         Usuários Cadastrado Com Sucesso!
			      </div>
			      <div class="modal-footer">
			      <form>
			        <button type="button" class="btn btn-primary" data-dismiss="modal">Fechar</button>
			      </div>
			    </div>
			  </div>
			</div>
			<!-- End Modal -->
            </div>
          </div>
          <!-- End Panel Projects Stats -->
        </div>
      </div>
    </div>
  </div>
  <!-- End Page -->
  <!-- Footer -->
  <footer class="site-footer">
    <div class="site-footer-legal">© 2017 <a href="http://everis.com">Everis</a></div>
    <div class="site-footer-right">
      Crafted with <i class="red-600 icon md-favorite"></i> by <a href="http://www.everis.com">Everis Brazil</a>
    </div>
  </footer>
  <!-- Core  -->
  <script src="global/vendor/jquery/jquery.js"></script>
  <script src="global/vendor/bootstrap/bootstrap.js"></script>
  <script src="global/vendor/animsition/animsition.js"></script>
  <script src="global/vendor/asscroll/jquery-asScroll.js"></script>
  <script src="global/vendor/mousewheel/jquery.mousewheel.js"></script>
  <script src="global/vendor/asscrollable/jquery.asScrollable.all.js"></script>
  <script src="global/vendor/ashoverscroll/jquery-asHoverScroll.js"></script>
  <script src="global/vendor/waves/waves.js"></script>
  <!-- Plugins -->
  <script src="global/vendor/jquery-mmenu/jquery.mmenu.min.all.js"></script>
  <script src="global/vendor/switchery/switchery.min.js"></script>
  <script src="global/vendor/intro-js/intro.js"></script>
  <script src="global/vendor/screenfull/screenfull.js"></script>
  <script src="global/vendor/slidepanel/jquery-slidePanel.js"></script>
  <script src="global/vendor/chartist-js/chartist.min.js"></script>
  <script src="global/vendor/chartist-plugin-tooltip/chartist-plugin-tooltip.min.js"></script>
  <script src="global/vendor/jvectormap/jquery-jvectormap.min.js"></script>
  <script src="global/vendor/jvectormap/maps/jquery-jvectormap-world-mill-en.js"></script>
  <script src="global/vendor/matchheight/jquery.matchHeight-min.js"></script>
  <script src="global/vendor/peity/jquery.peity.min.js"></script>
  <!-- Scripts -->
  <script src="global/js/core.js"></script>
  <script src="mmenu/assets/js/site.js"></script>
  <script src="mmenu/assets/js/sections/menu.js"></script>
  <script src="mmenu/assets/js/sections/menubar.js"></script>
  <script src="mmenu/assets/js/sections/gridmenu.js"></script>
  <script src="mmenu/assets/js/sections/sidebar.js"></script>
  <script src="global/js/configs/config-colors.js"></script>
  <script src="mmenu/assets/js/configs/config-tour.js"></script>
  <script src="global/js/components/asscrollable.js"></script>
  <script src="global/js/components/animsition.js"></script>
  <script src="global/js/components/slidepanel.js"></script>
  <script src="global/js/components/switchery.js"></script>
  <script src="global/js/components/tabs.js"></script>
  <script src="global/js/components/matchheight.js"></script>
  <script src="global/js/components/jvectormap.js"></script>
  <script src="global/js/components/peity.js"></script>


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