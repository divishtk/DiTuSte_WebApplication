

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>Home</title>

        <%@ include file="/WEB-INF/jspf/linkFiles.jspf" %>
    </head>
    <body>
        <div class="wrapper">
            <!-- Sidebar  -->
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h3 class="mx-3">DiTuSte <br/>&nbsp;&nbsp;&nbsp; Crypto</h3>
                </div>

                <ul class="list-unstyled components">
                    <li class="active">
                        <a href="#">Dashboard</a>
                    </li>
                    <li class="">
                        <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Security</a>
                        <ul class="collapse list-unstyled" id="homeSubmenu">
                            <li>
                                <a href="#">Security Tools</a>
                            </li>
                            <li>
                                <a href="#">Security Guidance</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="UserProfile.jsp">My Profile</a>
                    </li>
                    <li>
                        <a href="#">About Us</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                </ul>
            </nav>

            <!-- Page Content  -->
            <div id="content">

                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <div class="container-fluid">

                        <button type="button" id="sidebarCollapse" class="btn btn-info">
                            <i class="fas fa-align-left"></i>
                            <span>Menu</span>
                        </button>
                        <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <i class="fas fa-align-center"></i>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="nav navbar-nav ml-auto">
                                <li class="nav-item active">
                                    <a class="nav-link" href="#">My Profile <i class="fas fa-male"></i></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Notification <i class="fas fa-bell"></i></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/DiTuSte_Cryto/logoutSerlvet">Logout <i class="fas fa-sign-out-alt"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <%
                    String name = "";
                    try {
                        name = (String) session.getAttribute("uName");
                    } catch (Exception e) {
                        e.printStackTrace();

                    }
                %>
                <center> <h1>Welcome,<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <%= name%></h1></center>
                <!--     <h2><center>Web Security</center></h2>-->
                </br>



                <div class="container">
                    <h2><center>Write your Content Here..</center></h2>






                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#minitools" role="tab" aria-controls="home"
                               aria-selected="true">Mini Tools</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#article" role="tab" aria-controls="profile"
                               aria-selected="false">Article</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="minitools" role="tabpanel" aria-labelledby="home-tab">
                            
                                    <div class="tab">
            <table class="table table-bordered">
    <thead>
        <tr>
            <th>Id</th>
            <th>Title</th>
            <th>Description</th>
            <th>Data File</th>
            <th>Lab User</th>
            <th>Approved</th>
            <th>Last Modified</th>
            <th>Ratings</th>
            <th>Topics</th>
            
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Tools</td>
            <td>None</td>
            <td>None</td>
                 <td>None</td>
                      <td>None</td>
                           <td>None</td>
                                <td>None</td>
                                     <td>None</td>
            
            
        </tr>
        <tr>
               <td>1</td>
            <td>Tools</td>
            <td>None</td>
            <td>None</td>
                 <td>None</td>
                      <td>None</td>
                           <td>None</td>
                                <td>None</td>
                                     <td>None</td>
        </tr>
        <tr>
                 <td>1</td>
            <td>Tools</td>
            <td>None</td>
            <td>None</td>
                 <td>None</td>
                      <td>None</td>
                           <td>None</td>
                                <td>None</td>
                                     <td>None</td>
        </tr>     
        <tr>
                 <td>1</td>
            <td>Tools</td>
            <td>None</td>
            <td>None</td>
                 <td>None</td>
                      <td>None</td>
                           <td>None</td>
                                <td>None</td>
                                     <td>None</td>
        </tr>            
        <tr>
                 <td>1</td>
            <td>Tools</td>
            <td>None</td>
            <td>None</td>
                 <td>None</td>
                      <td>None</td>
                           <td>None</td>
                                <td>None</td>
                                     <td>None</td>
        </tr>            
        <tr>
                 <td>1</td>
            <td>Tools</td>
            <td>None</td>
            <td>None</td>
                 <td>None</td>
                      <td>None</td>
                           <td>None</td>
                                <td>None</td>
                                     <td>None</td>
        </tr>            
        <tr>
                 <td>1</td>
            <td>Tools</td>
            <td>None</td>
            <td>None</td>
                 <td>None</td>
                      <td>None</td>
                           <td>None</td>
                                <td>None</td>
                                     <td>None</td>
        </tr>            
        <tr>
                 <td>1</td>
            <td>Tools</td>
            <td>None</td>
            <td>None</td>
                 <td>None</td>
                      <td>None</td>
                           <td>None</td>
                                <td>None</td>
                                     <td>None</td>
        </tr>            
        <tr>
                 <td>1</td>
            <td>Tools</td>
            <td>None</td>
            <td>None</td>
                 <td>None</td>
                      <td>None</td>
                           <td>None</td>
                                <td>None</td>
                                     <td>None</td>
        </tr>            
        
    </tbody>
</table>
        </div>
                            
                            </div>
                        <div class="tab-pane fade" id="article" role="tabpanel" aria-labelledby="profile-tab">
                            
                                        <div class="tab">
            <table class="table table-bordered">
    <thead>
        <tr>
            <th>Id</th>
            <th>Title</th>
            <th>Topic</th>
            <th>Rated</th>
            <th>Posted On</th>
            <th>Lab User</th>
            <th>last Modified</th>
            <th>Data File</th>
            <th>Ratings</th>
            
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Tools</td>
            <td>None</td>
            <td>None</td>
                 <td>None</td>
                      <td>None</td>
                           <td>None</td>
                                <td>None</td>
                                     <td>None</td>
            
            
        </tr>
        <tr>
               <td>1</td>
            <td>Tools</td>
            <td>None</td>
            <td>None</td>
                 <td>None</td>
                      <td>None</td>
                           <td>None</td>
                                <td>None</td>
                                     <td>None</td>
        </tr>
        <tr>
                 <td>1</td>
            <td>Tools</td>
            <td>None</td>
            <td>None</td>
                 <td>None</td>
                      <td>None</td>
                           <td>None</td>
                                <td>None</td>
                                     <td>None</td>
        </tr>     
        <tr>
                 <td>1</td>
            <td>Tools</td>
            <td>None</td>
            <td>None</td>
                 <td>None</td>
                      <td>None</td>
                           <td>None</td>
                                <td>None</td>
                                     <td>None</td>
        </tr>            
        <tr>
                 <td>1</td>
            <td>Tools</td>
            <td>None</td>
            <td>None</td>
                 <td>None</td>
                      <td>None</td>
                           <td>None</td>
                                <td>None</td>
                                     <td>None</td>
        </tr>            
        <tr>
                 <td>1</td>
            <td>Tools</td>
            <td>None</td>
            <td>None</td>
                 <td>None</td>
                      <td>None</td>
                           <td>None</td>
                                <td>None</td>
                                     <td>None</td>
        </tr>            
        <tr>
                 <td>1</td>
            <td>Tools</td>
            <td>None</td>
            <td>None</td>
                 <td>None</td>
                      <td>None</td>
                           <td>None</td>
                                <td>None</td>
                                     <td>None</td>
        </tr>            
        <tr>
                 <td>1</td>
            <td>Tools</td>
            <td>None</td>
            <td>None</td>
                 <td>None</td>
                      <td>None</td>
                           <td>None</td>
                                <td>None</td>
                                     <td>None</td>
        </tr>            
        <tr>
                 <td>1</td>
            <td>Tools</td>
            <td>None</td>
            <td>None</td>
                 <td>None</td>
                      <td>None</td>
                           <td>None</td>
                                <td>None</td>
                                     <td>None</td>
        </tr>            
        
    </tbody>
</table>
        </div>



                </div>

            </div>




        </div>



    </div>


</body>

</html>