<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<Test.Models.LoginModel>" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>Login</title>
   <%-- <link href="<%: Url.Content("~/Content/Common.css")%>" rel="stylesheet" type="text/css" />--%>
    <link href="<%: Url.Content("~/Content/hoplun.css")%>" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="header-wrap">
		<header class="group">
			<h2><a href="index.html" title="burstudio">HopLunbd</a></h2>
			<div id="call">
				<h3>+(880 2) 8933 841-2, 8958 657</h3>
				<h4 class="green">Call us <strong>now</strong></h4>
			</div><!-- end call -->
			<nav class="group">
				<ul>
					<li class="home"><a href="#" title="">Home</a></li>
					<li><a href="#" title="">Services</a></li>
					<li><a href="#" title="">About Us</a></li>
					<li><a href="#" title="">Testimonials</a></li>
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
    <div style="width: 380px; margin: 200px auto 200px auto; border: 1px solid gray;">
        <div style="background-color: #c5c5c5; padding: 10px">
            Login</div>
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
        <div class="page_single_column">
            <input type="submit" value="Submit" title="Submit" />
        </div>
    </div>
    <%} %>
</div> <!--! end container -->
<footer class="group">
		<div id="footer-left">
			<p>Copyright <a href="#" class="green">www.hoplunbd.com</a> </br>
			Designed by <a href="#" class="green">H A S I B</a></p>
		</div>
			
		<div id="footer-right">
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">Services</a></li>
				<li><a href="#">About Us</a></li>
				<li><a href="#">Testimonials</a></li>
				<li><a href="#">Contact Us</a></li>
			</ul>
		</div>
				
		<a href="#header-wrap"><img src="images/back-top.png" alt="back-top" class="back-top" /></a>		
	</footer>
	
	
<script>
		$(function(){
			$('#slides').slides({
				preload: true,
				generateNextPrev: true,	
			});
		});
</script>

</body>
</html>
