<%@page import="com.everis.dao.DaoGeneric"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
	import="javax.servlet.http.HttpSession"   
	import="java.util.List" 
	import="com.everis.model.Rms"
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
  <title>Menu Editar Demanda | Everis Brazil Admin </title>
  <link rel="apple-touch-icon" href="../../assets/images/apple-touch-icon.png">
  <link rel="shortcut icon" href="../../assets/images/favicon.ico">
  <!-- Stylesheets -->
  <link rel="stylesheet" href="../../../global/css/bootstrap.min.css">
  <link rel="stylesheet" href="../../../global/css/bootstrap-extend.min.css">
  <link rel="stylesheet" href="../../assets/css/site.min.css">
  <!-- Plugins -->
  <link rel="stylesheet" href="../../../global/vendor/animsition/animsition.css">
  <link rel="stylesheet" href="../../../global/vendor/asscrollable/asScrollable.css">
  <link rel="stylesheet" href="../../../global/vendor/switchery/switchery.css">
  <link rel="stylesheet" href="../../../global/vendor/intro-js/introjs.css">
  <link rel="stylesheet" href="../../../global/vendor/slidepanel/slidePanel.css">
  <link rel="stylesheet" href="../../../global/vendor/jquery-mmenu/jquery-mmenu.css">
  <link rel="stylesheet" href="../../../global/vendor/flag-icon-css/flag-icon.css">
  <link rel="stylesheet" href="../../../global/vendor/waves/waves.css">
  <!-- Fonts -->
  <link rel="stylesheet" href="../../../global/fonts/material-design/material-design.min.css">
  <link rel="stylesheet" href="../../../global/fonts/brand-icons/brand-icons.min.css">
  <link rel="stylesheet" href="../../../global/mycss/index.css">
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
	 <script>  
  	function optionCheck(){
        var option = document.getElementById("situacao").value;
        if(option == "aprovada"){
            document.getElementById("hidden").style.visibility ="visible";
            document.getElementById("hidden").style.display ="block";
        } else{
        	document.getElementById("hidden").style.visibility ="hidden";
        	document.getElementById("hidden").style.display ="none";
        }
    }
  	
  	function optionCheck2(){
        var option = document.getElementById("analfun").value;
        if(option == "finalizado"){
            document.getElementById("hidden2").style.visibility ="visible";
            document.getElementById("hidden2").style.display ="block";
        } else{
        	document.getElementById("hidden2").style.visibility ="hidden";
        	document.getElementById("hidden2").style.display ="none";
        }
    }
  	
 	function sliderChange(val) {
		document.getElementById('sliderStatus').innerHTML = val;
	}
  </script>
  
  <style type="text/css">

.asterisco{
	color: red;
	font-weight: bold;
}
</style>
</head>
<body class="site-navbar-small ">
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
        <img class="navbar-brand-logo" src="../../assets/images/logo.png" title="Everis Brazil">
        <span class="navbar-brand-text"> Everis Brazil</span>
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
                              <a href="../advanced/animation.html">Animation</a>
                            </li>
                            <li><i class="md-chevron-right" aria-hidden="true"></i>
                              <a href="../uikit/buttons.html">Buttons</a>
                            </li>
                            <li><i class="md-chevron-right" aria-hidden="true"></i>
                              <a href="../uikit/colors.html">Colors</a>
                            </li>
                            <li><i class="md-chevron-right" aria-hidden="true"></i>
                              <a href="../uikit/dropdowns.html">Dropdowns</a>
                            </li>
                            <li><i class="md-chevron-right" aria-hidden="true"></i>
                              <a href="../uikit/icons.html">Icons</a>
                            </li>
                            <li><i class="md-chevron-right" aria-hidden="true"></i>
                              <a href="../advanced/lightbox.html">Lightbox</a>
                            </li>
                          </ul>
                        </li>
                        <li class="mega-menu margin-0">
                          <ul class="list-icons">
                            <li><i class="md-chevron-right" aria-hidden="true"></i>
                              <a href="../uikit/modals.html">Modals</a>
                            </li>
                            <li><i class="md-chevron-right" aria-hidden="true"></i>
                              <a href="../uikit/panel-structure.html">Panels</a>
                            </li>
                            <li><i class="md-chevron-right" aria-hidden="true"></i>
                              <a href="../structure/overlay.html">Overlay</a>
                            </li>
                            <li><i class="md-chevron-right" aria-hidden="true"></i>
                              <a href="../uikit/tooltip-popover.html ">Tooltips</a>
                            </li>
                            <li><i class="md-chevron-right" aria-hidden="true"></i>
                              <a href="../advanced/scrollable.html">Scrollable</a>
                            </li>
                            <li><i class="md-chevron-right" aria-hidden="true"></i>
                              <a href="../uikit/typography.html">Typography</a>
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
                            <img class="width-full" src="../../../global/photos/placeholder.png" alt="..."
                            />
                          </a>
                        </li>
                        <li>
                          <a class="thumbnail margin-0" href="javascript:void(0)">
                            <img class="width-full" src="../../../global/photos/placeholder.png" alt="..."
                            />
                          </a>
                        </li>
                        <li>
                          <a class="thumbnail margin-0" href="javascript:void(0)">
                            <img class="width-full" src="../../../global/photos/placeholder.png" alt="..."
                            />
                          </a>
                        </li>
                        <li>
                          <a class="thumbnail margin-0" href="javascript:void(0)">
                            <img class="width-full" src="../../../global/photos/placeholder.png" alt="..."
                            />
                          </a>
                        </li>
                        <li>
                          <a class="thumbnail margin-0" href="javascript:void(0)">
                            <img class="width-full" src="../../../global/photos/placeholder.png" alt="..."
                            />
                          </a>
                        </li>
                        <li>
                          <a class="thumbnail margin-0" href="javascript:void(0)">
                            <img class="width-full" src="../../../global/photos/placeholder.png" alt="..."
                            />
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
          <a href="../pages/login.jsp"><img src="../../../global/img/login.png" style="padding-top: 15px;padding-right:5px;width: 140px;"/></a>  
									            <% }%>
          </li>
        <ul class="nav navbar-toolbar navbar-right navbar-toolbar-right">
          <li class="dropdown" style="margin-right: 25px;">
            <a class="navbar-avatar dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false"
            data-animation="scale-up" role="button">
              <span class="avatar avatar-online">
                <img src="../../../global/portraits/5.jpg" alt="...">
                <i></i>
              </span>
            </a>
            <ul class="dropdown-menu" role="menu">
              <li role="presentation">
                <a href="../pages/profile.jsp" role="menuitem"><i class="icon md-account" aria-hidden="true"></i> Profile</a>
              </li>
              <li role="presentation">
                <a href="javascript:void(0)" role="menuitem"><i class="icon md-card" aria-hidden="true"></i> Billing</a>
              </li>
              <li role="presentation">
                <a href="javascript:void(0)" role="menuitem"><i class="icon md-settings" aria-hidden="true"></i> Settings</a>
              </li>
              <li class="divider" role="presentation"></li>
              <li role="presentation">
                <a href="../../../jsp/sair.jsp" role="menuitem"><i class="icon md-power" aria-hidden="true"></i> Logout</a>
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
      <li class="site-menu-item">
        <a class="animsition-link" href="../../../">
          <i class="site-menu-icon md-view-dashboard" aria-hidden="true"></i>
          <span class="site-menu-title">Dashboard</span>
        </a>
      </li>
      <li class="site-menu-item has-sub active">
        <a href="javascript:void(0)">
          <i class="site-menu-icon md-view-compact" aria-hidden="true"></i>
          <span class="site-menu-title">Opções de Projeto</span>
          <span class="site-menu-arrow"></span>
        </a>
        <ul class="site-menu-sub">
          <li class="site-menu-item">
            <a class="animsition-link" href="../layouts/menu-collapsed.jsp">
              <span class="site-menu-title">Novo Projeto</span>
            </a>
          </li>

          <li class="site-menu-item active">
            <a class="animsition-link" href="../layouts/grids.jsp">
              <span class="site-menu-title">Editar Projeto</span>
            </a>
          </li>
	      <li class="site-menu-item">
	          <a class="animsition-link" href="../layouts/view.jsp">
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
          <li class="site-menu-item">
            <a class="animsition-link" href="../pages/register.jsp">
              <span class="site-menu-title">Novo Usuário</span>
            </a>
          </li>
          <li class="site-menu-item">
            <a class="animsition-link" href="../pages/login.jsp">
              <span class="site-menu-title">Login</span>
            </a>
          </li>


          <li class="site-menu-item">
            <a class="animsition-link" href="../pages/profile.jsp">
              <span class="site-menu-title">Perfil</span>
            </a>
          </li>

         <li class="site-menu-item">
            <a class="animsition-link" href="../pages/forgot-password.html">
              <span class="site-menu-title">Esqueci Minha Senha</span>
            </a>
          </li>

        </ul>
      </li>

      <li class="site-menu-item has-sub">
        <a href="javascript:void(0)">
          <i class="site-menu-icon md-chart" aria-hidden="true"></i>
          <span class="site-menu-title">DashBoard Type</span>
          <span class="site-menu-arrow"></span>
        </a>
        <ul class="site-menu-sub">
          <li class="site-menu-item">
            <a class="animsition-link" href="../charts/chartjs.html">
              <span class="site-menu-title">DashBoard Individual</span>
            </a>
          </li>
          <li class="site-menu-item">
            <a class="animsition-link" href="../charts/gauges.html">
              <span class="site-menu-title">DashBoard Geral</span>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </div>


  <div class="site-gridmenu">
    <div>
      <div>
        <ul>
          <li>
            <a href="../apps/mailbox/mailbox.html">
              <i class="icon md-email"></i>
              <span>Mailbox</span>
            </a>
          </li>
          <li>
            <a href="../apps/calendar/calendar.html">
              <i class="icon md-calendar"></i>
              <span>Calendar</span>
            </a>
          </li>
          <li>
            <a href="../apps/contacts/contacts.html">
              <i class="icon md-account"></i>
              <span>Contacts</span>
            </a>
          </li>
          <li>
            <a href="../apps/media/overview.html">
              <i class="icon md-videocam"></i>
              <span>Media</span>
            </a>
          </li>
          <li>
            <a href="../apps/documents/categories.html">
              <i class="icon md-receipt"></i>
              <span>Documents</span>
            </a>
          </li>
          <li>
            <a href="../apps/projects/projects.html">
              <i class="icon md-image"></i>
              <span>Project</span>
            </a>
          </li>
          <li>
            <a href="../apps/forum/forum.html">
              <i class="icon md-comments"></i>
              <span>Forum</span>
            </a>
          </li>
          <li>
            <a href="../index.html">
              <i class="icon md-view-dashboard"></i>
              <span>Dashboard</span>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </div>

	


<div class="page animsition">
     <div class="page-content">
      <div class="panel" style="border-bottom: 4px solid #7082e6;">
        <div class="panel-heading">
	        <div style="display: inline-flex;width: 100%;">
	        <% List<Rms> listaRms = (List<Rms>) session.getAttribute("listaRms");
	        if(!(listaRms == null || listaRms.isEmpty())){%>
	          <h3 class="panel-title" style="width: 500px; font-weight: bold; color: #fb8c00;" >Preencha o Formulário Abaixo</h3>
	        <%} else{%>
	        	<h3 class="panel-title" style="width: 400px;font-weight: bold;color:#4153b7;font-size: 25px;">Editar Projeto</h3>
	        <%} %>
	         <form class="panel-title" action="../../../BuscarRms" method="POST" style="width:100%; float: right;">
	           	<div  style="float: right;">
		          	<label><input type="text" class="form-control" id="pesquisa" name="pesquisa" placeholder="Buscar Demanda Por ID" required></label>
		          	<button type="submit" value="Pesquisar" name="pesquisar" id="pesquisar" class="btn btn-primary mb-2">Buscar</button>
	          	</div>
	          </form>
	        </div> 
	        
	        <%if(listaRms == null || listaRms.isEmpty()){%>
          <form action="../../../InserirRms" method="post"> 
              
              <%
			  Boolean idPesquisadoNaoEncontrado = (Boolean) session.getAttribute("idPesquisadoNaoEncontrado");
	          if(idPesquisadoNaoEncontrado == null){
	        	  idPesquisadoNaoEncontrado = false;
	          }
              if(idPesquisadoNaoEncontrado == false){ %>
              <fieldset id="fildset">
                  <div>
                      <img src="../../../global/img/projeto.png" style="float:left;"/>
                  	  <h1 style="font-weight: bold; black;margin-top: 7%;float: right;width: 850px;"> 
                      	Pesquise uma demanda para ser editada.
                      </h1>
                  </div>
               </fieldset>
               <%}%>
                <% if(idPesquisadoNaoEncontrado == true){ %>
                <fieldset id="fildset" style="height: 150px;">
                  <div>
                      <img src="../../../global/img/xdemanda.jpg" style="float:left; width: 50px;margin-left: 10%;margin-top: 5%;"/>
                  	  <h1 style="font-weight: bold; black;margin-top: 6%;margin-right:6%; float: right;width: 850px; color: #e67272;"> 
                      	ID não encontrado! Favor pesquisar novamente.
                      </h1>
                  </div>
                 </fieldset>
               <%}
              session.removeAttribute("idPesquisadoNaoEncontrado");%>               
          <% }else{ 
          Rms rms = listaRms.get(0);%>
          <form action="../../../AtualizarRms" method="post"> 
              <fieldset id="fildset">
                  <div class="divgrupo">
                      <p class="grupo"> FASE DE ESTIMATIVA </p>
                  </div>
                  <label>Usuário Dono: <span style="font-weight: bold;"><%out.print(rms.getDono());%></span><br><br>
                  <label><span class="asterisco">*</span> ID Demanda &nbsp&nbsp <input type="text" class="form-control" name="iddemanda" id="iddemanda" value="<%out.println(rms.getId_Demanda()); %>" readonly> </label>
                  <label><span class="asterisco">*</span> Projeto <input type="text" class="form-control" name="projeto" id="projeto" value="<%out.println(rms.getProjeto()); %>" readonly> </label>
                  <label> Data Release <input type="date" class="form-control" name="datarelease" id="datarelease" value="<%out.print(rms.getDt_release());%>"></label>
                    <%if(rms.getDemanda().equals("estimando")){ %>
				  <label> Status <select class="form-control" name="demanda" id="demanda">
				  	<option name="estimando" value="estimando" selected="selected"> Estimando </option>
				  	<option name="desenvolvendo" value="desenvolvendo"> Desenvolvendo </option>
				  	<option name="homologando" value="homologando"> Homologando </option>
				  	<option name="concluido" value="concluido"> Concluído </option>
				  	<option name="cancelado" value="cancelado"> Cancelado </option>
				  </select></label>
				  <%}%>
				  <%if(rms.getDemanda().equals("desenvolvendo")){ %>
				  <label> Status <select class="form-control" name="demanda" id="demanda">
				  	<option name="estimando" value="estimando"> Estimando </option>
				  	<option name="desenvolvendo" value="desenvolvendo" selected="selected"> Desenvolvendo </option>
				  	<option name="homologando" value="homologando"> Homologando </option>
				  	<option name="concluido" value="concluido"> Concluído </option>
				  	<option name="cancelado" value="cancelado"> Cancelado </option>
				  </select></label>
				  <%}%>
				  <%if(rms.getDemanda().equals("homologando")){ %>
				  <label> Status <select class="form-control" name="demanda" id="demanda">
				  	<option name="estimando" value="estimando"> Estimando </option>
				  	<option name="desenvolvendo" value="desenvolvendo"> Desenvolvendo </option>
				  	<option name="homologando" value="homologando" selected="selected"> Homologando </option>
				  	<option name="concluido" value="concluido"> Concluído </option>
				  	<option name="cancelado" value="cancelado"> Cancelado </option>
				  </select></label>
				  <%}%>
				  <%if(rms.getDemanda().equals("concluido")){ %>
				  <label> Status <select class="form-control" name="demanda" id="demanda">
				  	<option name="estimando" value="estimando"> Estimando </option>
				  	<option name="desenvolvendo" value="desenvolvendo"> Desenvolvendo </option>
				  	<option name="homologando" value="homologando"> Homologando </option>
				  	<option name="concluido" value="concluido" selected="selected"> Concluído </option>
				  	<option name="cancelado" value="cancelado"> Cancelado </option>
				  </select></label>
				  <%}%>
				   <%if(rms.getDemanda().equals("cancelado")){ %>
				  <label> Status <select class="form-control" name="demanda" id="demanda">
				  	<option name="estimando" value="estimando"> Estimando </option>
				  	<option name="desenvolvendo" value="desenvolvendo"> Desenvolvendo </option>
				  	<option name="homologando" value="homologando"> Homologando </option>
				  	<option name="concluido" value="concluido"> Concluído </option>
				  	<option name="cancelado" value="cancelado" selected="selected"> Cancelado </option>
				  </select></label>
				  <%}%>
                  <label>
                  	Progresso:&nbsp<span id="sliderStatus"> <%out.print(rms.getProgresso());%></span> % 
                  	<input type="range" id="range" name="progresso" min="0" max="100" value="<%out.print(rms.getProgresso());%>" step="10" onchange="sliderChange(this.value)">
                  </label><br><br>
                  <div class="form-group">
				    <label for="comment"><span class="asterisco">*</span> Descrição</label>
				    <textarea class="form-control" rows="5" name="descdemanda" id="descdemanda" required><%out.println(rms.getDescricao_demanda());%></textarea>
	              </div>
             	
                  <label> Solicitante vivo <input type="text" class="form-control" name="solvivo" id="solvivo" value="<%out.println(rms.getSolicitante_vivo()); %>"> </label>				
                  <label> Analista Responsável <input type="text" class="form-control" name="analresp" id="analresp" value="<%out.println(rms.getAnal_resp()); %>"> </label>
                  <label> Data Entrada Estimada <input type="date" class="form-control" name="entrada" id="entrada" value="<%out.print(rms.getDt_entrada_estimada());%>" /> </label> 
                  <label> Data Entrega Estimada  <input type="date" class="form-control" name="entrega" id="entrega" value="<%out.print(rms.getDt_entrega_estm());%>"/></label> 
                <%if(rms.getTipo_demanda().equals("pp")){ %>
                  <label> Tipo da Demanda<select class="form-control" name="tipodemanda"> 
                  		<option name="pp" value="pp" selected="selected">PP</option>
                  		<option name="projeto" value="Projeto">Projeto</option>
                  </select>  </label>
                  <br><br>
                  <% }else{%>
                  <label> Tipo da Demanda<select class="form-control" name="tipodemanda"> 
                  		<option name="pp" value="pp">PP</option>
                  		<option name="projeto" value="Projeto" selected="selected">Projeto</option>
                  </select>  </label>
                  <%} %>
                  <br><br>
                  <label> Data Estimada Real  <input type="date" class="form-control" name="real" id="real" value="<%out.print(rms.getDt_real_estm());%>"/></label>
                  <label> Estimativa Cliente  <input type="date" class="form-control" name="estimacliente" id="estimacliente" value="<%out.print(rms.getEstimativa_cliente());%>"></label> 
                  
                  
                  <!--  Cada Jornada Equivale a 8 horas e cada ponto a 4 horas  --> 
                  <label> Jornadas  <input type="number" class="form-control" name="jornadas" id="jornadas" value="<%out.print(rms.getJornadas());%>"/></label> 
                  <label> Pontos <input type="number" class="form-control" name="pontos" id="pontos" value="<%out.print(rms.getPontos());%>"/></label>
                  
                  <!-- Se a situaÃ§Ã£o da demanda estiver em "APROVADA" deve aparecer o próximo formulário
                  Caso for reprovada deve finalizar a demanda, demais opções permanecer em aberto-->
                   
                    <%if(rms.getSituacao_estimativa().equals("aberta")){ %>
                  <label>Situação da Estimativa <select name="situacao" class="form-control" id="situacao" onchange="optionCheck()">
                    	<option name="aberta" value="aberta" selected="selected"> Aberta </option>
                 	   	<option name="andamento" value="andamento"> Em Andamento </option>
                    	<option name="agaprovada" value="agaprovada"> Aguardando Aprovação </option>
                    	<option name="aprovada"  value="aprovada"> Aprovada </option>
                    	<option name="reprovada" value="reprovada"> Reprovada </option>
                    </select> </label> <br><br>	
                    <%} %>
                    <%if(rms.getSituacao_estimativa().equals("andamento")){ %>
                    <label>Situação da Estimativa <select name="situacao" class="form-control" id="situacao" onchange="optionCheck()">
                    	<option name="aberta" value="aberta" selected="selected"> Aberta </option>
                 	   	<option name="andamento" value="andamento" selected="selected"> Em Andamento </option>
                    	<option name="agaprovada" value="agaprovada"> Aguardando Aprovação </option>
                    	<option name="aprovada"  value="aprovada"> Aprovada </option>
                    	<option name="reprovada" value="reprovada"> Reprovada </option>
                    </select> </label> <br><br>	
                    <%} %>
                    <%if(rms.getSituacao_estimativa().equals("agaprovada")){ %>
                    <label>Situação da Estimativa <select name="situacao" class="form-control" id="situacao" onchange="optionCheck()">
                    	<option name="aberta" value="aberta" selected="selected"> Aberta </option>
                 	   	<option name="andamento" value="andamento"> Em Andamento </option>
                    	<option name="agaprovada" value="agaprovada" selected="selected"> Aguardando Aprovação </option>
                    	<option name="aprovada"  value="aprovada"> Aprovada </option>
                    	<option name="reprovada" value="reprovada"> Reprovada </option>
                   	</select> </label> <br><br>	
                    <%} %>
                    <%if(rms.getSituacao_estimativa().equals("aprovada")){ %>
                    <label>Situação da Estimativa <select name="situacao" class="form-control" id="situacao" onchange="optionCheck()">
                    	<option name="aberta" value="aberta" selected="selected"> Aberta </option>
                 	   	<option name="andamento" value="andamento"> Em Andamento </option>
                    	<option name="agaprovada" value="agaprovada"> Aguardando Aprovação </option>
                    	<option name="aprovada"  value="aprovada" selected="selected"> Aprovada </option>
                    	<option name="reprovada" value="reprovada"> Reprovada </option>
                    </select> </label> <br><br>	
                    <%} %>
                    <%if(rms.getSituacao_estimativa().equals("reprovada")){ %>
                    <label>Situação da Estimativa <select name="situacao" class="form-control" id="situacao" onchange="optionCheck()">
                    	<option name="aberta" value="aberta" selected="selected"> Aberta </option>
                 	   	<option name="andamento" value="andamento"> Em Andamento </option>
                    	<option name="agaprovada" value="agaprovada"> Aguardando Aprovação </option>
                    	<option name="aprovada"  value="aprovada"> Aprovada </option>
                    	<option name="reprovada" value="reprovada" selected="selected"> Reprovada </option>
                  	</select> </label> <br><br>	
                    <%} %>
                  
                  
                  
                  <div class="divgrupo">
                      <p class="grupo"> FASE DE DESENVOLVIMENTO </p>
                  </div>

                  <label> Linha CAP <input type="text" class="form-control" name="linhacap" id="linhacap" value="<%out.print(rms.getLinha_cap());%>"></label>
                  <label> Início RMS v1 <input type="date" class="form-control" name="inrms" id="inrmsv1" value="<%out.print(rms.getInicio_rms());%>"></label>
                  <label> Fim RMS v1 <input type="date" class="form-control" name="fimrms" id="fimrmsv1" value="<%out.print(rms.getFim_rms());%>"></label>
                  <label> Aprovação RMS v1 <input type="date" class="form-control" name="aprms" id="aprmsv1" value="<%out.print(rms.getAprovacao_rms());%>"></label>
                  <label> Início Dev <input type="date" class="form-control" name="indev" id="indev"  value="<%out.print(rms.getInicio_dev());%>"></label>
                  <label> Fim Dev <input type="date" class="form-control" name="fimdev" id="fimdev" value="<%out.print(rms.getFim_dev());%>"></label>
                  <label> Início Homologação Everis <input type="date" class="form-control" name="inhomoeveris" id="inhomoeveris" value="<%out.print(rms.getInicio_homo_everis());%>"></label>
                  <label> Fim Homologação Everis <input type="date" class="form-control" name="fimhomoeveris" id="fimhomoeveris" value="<%out.print(rms.getFim_homo_everis());%>"></label> <br><br>
                  <label> Início Planejamento  <input type="date" class="form-control" name="inplanejamento" id="planejamento" value="<%out.print(rms.getInplanejamento());%>"></label>
                  <label> Fim Planejamento  <input type="date" class="form-control" name="fimplanejamento" id="planejamento" value="<%out.print(rms.getFimplanejamento());%>"></label>
                  
                  <%if(rms.getAnalise_funcional().equals("andamento")){%>
                  <label> Análise Funcional <select class="form-control" name="analfun" id="analfun" onchange="optionCheck2()"> 
                    <option name="andamento" value="andamento" selected="selected"> Em Andamento </option>
                    <option name="cancelado" value="cancelado"> Cancelado </option>
                    <option name="finalizado" value="finalizado"> Finalizado </option>
                    <option name="pendente" value="pendente"> Pendente Informação </option>
                  </select> </label> <br><br>
                  <%} %>
                  <%if(rms.getAnalise_funcional().equals("cancelado")){%>
                  <label> Análise Funcional <select class="form-control" name="analfun" id="analfun" onchange="optionCheck2()"> 
                    <option name="andamento" value="andamento"> Em Andamento </option>
                    <option name="cancelado" value="cancelado" selected="selected"> Cancelado </option>
                    <option name="finalizado" value="finalizado"> Finalizado </option>
                    <option name="pendente" value="pendente"> Pendente Informação </option>
                  </select> </label> <br><br>
                  <%} %>
                  <%if(rms.getAnalise_funcional().equals("finalizado")){%>
                  <label> Análise Funcional <select class="form-control" name="analfun" id="analfun" onchange="optionCheck2()"> 
                    <option name="andamento" value="andamento"> Em Andamento </option>
                    <option name="cancelado" value="cancelado"> Cancelado </option>
                    <option name="finalizado" value="finalizado" selected="selected"> Finalizado </option>
                    <option name="pendente" value="pendente"> Pendente Informação </option>
                  </select> </label> <br><br>
                  <%} %>
                  <%if(rms.getAnalise_funcional().equals("pendente")){%>
                  <label> Análise Funcional <select class="form-control" name="analfun" id="analfun" onchange="optionCheck2()"> 
                    <option name="andamento" value="andamento"> Em Andamento </option>
                    <option name="cancelado" value="cancelado"> Cancelado </option>
                    <option name="finalizado" value="finalizado"> Finalizado </option>
                    <option name="pendente" value="pendente" selected="selected"> Pendente Informação </option>
                  </select> </label> <br><br>
                  <%} %>
                  	
                  			
                  <div class="divgrupo">
                      <p class="grupo"> FASE DE HOMOLOGAÇÃO </p>
                  </div>
                  
                  <label> Esteira <input type="text" class="form-control" name="esteira" id="esteira" value="<%out.print(rms.getEsteira());%>"></label>
                  <label> Início Homologação VIVO <input type="date" class="form-control" name="inhomovivo" id="inhomovivo" value="<%out.print(rms.getInicio_homo_vivo());%>"></label>
                  <label> Fim Homologação VIVO <input type="date" class="form-control" name="fimhomovivo" id="fimhomovivo" value="<%out.print(rms.getFim_homo_vivo());%>"></label> 
                  <label> Início Pré-Prod <input type="date" class="form-control" name="inpreprod" id="inpreprod" value="<%out.print(rms.getInicio_preprod());%>"></label>
                  <label> Fim Pré-Prod <input type="date" class="form-control" name="fimpreprod" id="fimpreprod" value="<%out.print(rms.getFim_preprod());%>"></label>
				  <br><br>
						<span style="float: right;">
						  <button type="reset" class="btn btn-primary" >Limpar</button>
						  <button type="submit" class="btn btn-primary" id="submit">Atualizar</button>
				  		</span>
				  <br><br>
				  	</div>
				  </div>                  
              </fieldset>
          </form>
          <%} %>
        </div>
        <div class="panel-body">
		<% session.removeAttribute("listaRms"); %>
        </div>
      </div>
    </div>
  </div>


  <!-- Footer -->
  <footer class="site-footer">
    <div class="site-footer-legal">© 2017 <a href="http://everis.com">Everis Brazil</a></div>
    <div class="site-footer-right">
      Crafted with <i class="red-600 icon md-favorite"></i> by <a href="http://everis.com">Everis Brazil</a>
    </div>
  </footer>
  <!-- Core  -->
  <script src="../../../global/vendor/jquery/jquery.js"></script>
  <script src="../../../global/vendor/bootstrap/bootstrap.js"></script>
  <script src="../../../global/vendor/animsition/animsition.js"></script>
  <script src="../../../global/vendor/asscroll/jquery-asScroll.js"></script>
  <script src="../../../global/vendor/mousewheel/jquery.mousewheel.js"></script>
  <script src="../../../global/vendor/asscrollable/jquery.asScrollable.all.js"></script>
  <script src="../../../global/vendor/ashoverscroll/jquery-asHoverScroll.js"></script>
  <script src="../../../global/vendor/waves/waves.js"></script>
  <!-- Plugins -->
  <script src="../../../global/vendor/jquery-mmenu/jquery.mmenu.min.all.js"></script>
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