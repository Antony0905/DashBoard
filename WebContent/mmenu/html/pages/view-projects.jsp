<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.everis.dao.DaoGeneric"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
	import="javax.servlet.http.HttpSession"   
	import="java.util.List" 
	import="com.everis.model.Rms"
	import="com.everis.model.Usuarios"
	import="com.everis.dao.DaoGeneric"
	import="java.util.ArrayList"
%>

<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
  <meta name="description" content="bootstrap admin template">
  <meta name="author" content="">
  <title>Menu Nova Demanda | Everis Brazil Admin </title>
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
  <link rel="stylesheet" href="../../../global/mycss/global.css">
  <link rel="stylesheet" href="../../../global/mycss/view-project.css">
  <!--[if lt IE 9]>
    <script src="../../../global/vendor/html5shiv/html5shiv.min.js"></script>
    <![endif]-->
  <!--[if lt IE 10]>
    <script src="../../../global/vendor/media-match/media.match.min.js"></script>
    <script src="../../../global/vendor/respond/respond.min.js"></script>
    <![endif]-->
    
<style type="text/css">

.asterisco{
	color: red;
	font-weight: bold;
}
</style>
  <!-- Scripts -->
  <script src="../../../global/vendor/modernizr/modernizr.js"></script>
  <script src="../../../global/vendor/breakpoints/breakpoints.js"></script>
  <script src="jquery-3.3.1.min.js"></script>
 
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
  	
  	function abrirModalRmsJaCadastrado(){
		document.getElementById('abrirModal').click();
	}
</script>
</head>
<%	Boolean rmsJaCadastrada = (Boolean) session.getAttribute("rmsJaCadastrada");
	if(rmsJaCadastrada == null){
		rmsJaCadastrada = false;
	}
%>
<%if(rmsJaCadastrada){ %>
<body class="site-navbar-small dashboard" onload="abrirModalRmsJaCadastrado()">
<%}else{ %>  
<body class="site-navbar-small site-menubar-fold site-menubar-keep">
<%} session.removeAttribute("rmsJaCadastrada");%>



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
	          <li class="site-menu-item active">
	            <a class="animsition-link" href="menu-collapsed.jsp">
	              <span class="site-menu-title">Novo Projeto</span>
	            </a>
	          </li>
	          <li class="site-menu-item">
	            <a class="animsition-link" href="../layouts/grids.jsp">
	              <span class="site-menu-title">Editar Projeto</span>
	            </a>
	          </li>
	
	          <li class="site-menu-item">
	            <a class="animsition-link" href="../layouts/view.jsp">
	              <span class="site-menu-title">Visualizar Projeto</span>
	            </a>
	          </li>
	          <li class="site-menu-item">
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
  
  <% 
		DaoGeneric<Rms> daoGeneric = new DaoGeneric<Rms>();
		List<Rms> listaRms = new ArrayList<Rms>();
		String usuarioSelecionado = (String) session.getAttribute("usuarioSelecionado");
		String statusRms = (String) session.getAttribute("statusRms");
		listaRms = daoGeneric.buscarRmsPorStatus(Rms.class, usuarioSelecionado, statusRms);
		if(usuarioSelecionado ==null){
			usuarioSelecionado = "";
		}
		int concluido = 0;
		int cancelado = 0;
		int andamento = 0;
		String status[] = {"Todos","Estimando","Desenvolvendo","Homologando","Concluído","Cancelado"};
		

%>

<%	List<Usuarios> listaUsuarios = new ArrayList<Usuarios>();
    DaoGeneric<Usuarios> daoGenericUsuarios = new DaoGeneric<Usuarios>();
    listaUsuarios = daoGenericUsuarios.buscarUsuarios(Usuarios.class);
%>

  <!-- Page -->
  <div class="page animsition">
    <div class="page-content">
      <div class="panel">
         <div >
           <form action="../../../ViewProjetos" method="POST" style="width: 800px;padding-left: 6%;padding-top: 4%;">
                 Usuário <select id="usuarios" style="width: 180px;" class="formcontrol" id="usuarioSelecionado" name="usuarioSelecionado" onchange="this.form.submit()">
                 		<option value="">Selecione</option>
                 	<%for(int i=0; i < listaUsuarios.size(); i++){
                 			Usuarios usuario = listaUsuarios.get(i);
                 			
                 		if(usuario.getUsuario().equals(usuarioSelecionado)){%>
                 			<option value="<%out.print(usuario.getUsuario()); %>" selected="selected"> <%out.print(usuario.getNome()); %> </option>
                 		<%}else{%>
                        <option value="<%out.print(usuario.getUsuario()); %>"> <%out.print(usuario.getNome()); %> </option>
                 		<%}
                 	}%>
                 </select>
                 <span style="margin-left: 20px;">Status</span> <select id="status" name="status" style="width: 180px;" class="formcontrol" onchange="this.form.submit()">
                 		<%for(int i=0;i<status.length;i++){ 
                 			if(status[i].equals(statusRms)){  %>
                 				<option value="<%out.print(status[i]);%>" selected="selected"><%out.print(status[i]);%></option>
                 			<%}else{ %>
                 				<option value="<%out.print(status[i]);%>"><%out.print(status[i]);%></option>
                 		   <%}
                 		 } %>
                 </select>
            </form>
         </div>
        <div class="panel-heading">
         	

         <fieldset id="fildset">                 
         <div class="col-xlg-7 col-md-6" style="width: 100%; margin-top: 5%;">
          <!-- Panel Projects Status -->
          <div class="panel" id="projects-status">
            <div class="panel-heading">
              <h3 class="panel-title" style="font-weight: bold;">
                Projetos Usuarios <span style="color: red;"><%out.print(usuarioSelecionado);%></span>
                <span style="float:right;width: 140px;text-align: center;">Total <span style="color:green;padding-left: 8%;"><%out.print(listaRms.size());%></span></span>
              </h3>
            </div>
            <div class="table-responsive">
              <table class="table table-striped">
                <thead>
                  <tr>
                    <td>ID</td>
                    <td>Projeto</td>
                    <td>Descrição</td>
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
                    <td><%out.print(rms.getDescricao_demanda()); %></td>
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
            </div>
            </div>
          </div>   
		</fieldset>
      <% session.removeAttribute("usuarioSelecionado"); %>
        </div>
        <div class="panel-body">

        </div>
      </div>
    </div>
  </div>


  <!-- End Page -->
  <!-- Footer -->
  <footer class="site-footer">
    <div class="site-footer-legal">© 2017 <a href="http://www.everis.com">Everis Brazil</a></div>
    <div class="site-footer-right">
      Crafted with <i class="red-600 icon md-favorite"></i> by <a href="http://www.everis.com">Everis Brazil</a>
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
  <!-- Plugins -->''
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