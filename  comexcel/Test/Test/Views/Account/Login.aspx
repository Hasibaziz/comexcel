<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<Test.Models.LoginModel>" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>Login</title>
   <%-- <link href="<%: Url.Content("~/Content/Common.css")%>" rel="stylesheet" type="text/css" />--%>
    <script src="<%: Url.Content("~/Scripts/jquery-1.5.1.min.js") %>" type="text/javascript"></script>
    <script src="<%: Url.Content("~/Scripts/slides.min.jquery.js") %>" type="text/javascript"></script>
    <link href="<%: Url.Content("~/Content/hoplun.css")%>" rel="stylesheet" type="text/css" />

    <script type="text/javascript">
		$(function(){
			$('#slides').slides({
				preload: true,
				generateNextPrev: true	
			});
		});
</script>
</head>
<body>
<div id="header-wrap">
		<header class="group">
			<h2><a href="index.html" title="burstudio">HopLunbd</a></h2>
			<div id="call">
				<h3>+(880 2) 8933 841-2, 8958 657</h3>
                <h1>Fax: +(880 2) 8933 843</h1>
				<h4 class="green">Call us <strong>now</strong></h4>
			</div><!-- end call -->
			<nav class="group">
				<ul>
					<li class="home"><a href="#" title="">Home</a></li>
					<li><a href="#" title="">Services</a></li>
					<li><a href="#" title="">Products</a></li>
					<li><a href="#" title="">About Us</a></li>
					<li class="last">
						<div>
							<input type="text" name="search" placeholder="search" />
							<input type="submit" name="search" value="go" class="search"/>
						</div>
					</li>
				</ul>
			</nav>
		</header>
	</div><!-- end header wrap -->
    <div id="container">
    <% using (Html.BeginForm())%> 
    <%{%>
    <div style="width: 300px; margin: 45px auto 120px auto; border: 0px solid gray;">
        <div style="background-color: #c5c5c5; padding: 10px">Login</div>
        <div class="page_single_column">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.UserName )%>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.UserName)%>
                <%: Html.ValidationMessageFor(model => model.UserName)%>
            </div>
        </div>
        <div class="page_single_column">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Password )%>
            </div>
            <div class="editor-field">
                <%: Html.PasswordFor(model => model.Password)%>
                <%: Html.ValidationMessageFor(model => model.Password)%>
            </div>
        </div>
          <div>
            <input type="submit" value="Submit" class="btn btn-primary btn-lg active" title="Submit" />
          </div> 
      </div>        
    <%} %>
</div> <!--! end container -->
<footer class="group">
		<div id="footer-left">
			<p>Copyright <a href="#" class="green">www.hoplunbd.com</a> </br>
			Developed by <a href="#" class="green">H A S I B, IT Dept.</a></p>
		</div>
			
		<div id="footer-right">
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">Services</a></li>
				<li><a href="#">About Us</a></li>
				<li><a href="#">Products</a></li>
				<li><a href="#">Contact Us</a></li>
			</ul>
		</div>
				
		<a href="#header-wrap"><img src="/Content/images/back-top.png" alt="back-top" class="back-top" /></a>		
	</footer>
</body>
</html>
