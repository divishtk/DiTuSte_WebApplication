<%-- 
    Document   : home2
    Created on : 12 Aug, 2020, 9:20:05 PM
    Author     : Nevets
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>Home</title>

        <%@ include file="/WEB-INF/jspf/linkFiles.jspf" %>
        <style>
            .articles > .articleCols > div.row > .article_content > p {
                overflow: hidden;
                width:100%;
                display: -webkit-box;
                -webkit-line-clamp: 3;
                -webkit-box-orient: vertical;
            }
            .color-darkgrey{
                color: darkgrey;
            }
            .color-lightslategray{
                color: lightslategray;
            }
        </style>
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
                        <a href="#">My Profile</a>
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
                <h1 class="text-center mt-3">Article</h1>
                <hr/>
                <p>
                    Articles is the page where one needs to discover how to resolve and prevent cyber attack on hosted 
                    project. Each article mentioned below are provide by trusted contributors. These contributor are verified as 
                    expert in the IT Security department. They are well trained and help provide reasonable code/suggestion to 
                    the cyber security attack happening daily in the recent times. 
                    Feel free to Select an article and start reading.
                </p>
                <div class="container-fluid">
                    <div class="row justify-content-center articles">
                        <div class="articleCols col-12">
                            <div id="articleId-1" class="row rounded border my-4 ml-2 p-2 mouseOnHover" data-by="" data-date="">
                                <div class="col-2">
                                    <img 
                                        src="https://cdn0.iconfinder.com/data/icons/cyber-crime-or-threats-glyph/120/ddos_attack_denial_of_service-512.png" 
                                        class="img-fluid img-thumbnail" alt="Not found">
                                </div>
                                <div class="col-10 article_content">
                                    <h3 class="color-lightslategray"><u>Denial of Service</u></h3>
                                    <p class="small">Denial of Service (DOS) is a cyber-attack on an individual Computer or 
                                        Website with intent to deny services to intended users.Their purpose is 
                                        to disrupt an organization’s network operations by denying access to its 
                                        users.Denial of service is typically accomplished by flooding the targeted 
                                        machine or resource with surplus requests in an attempt to overload systems 
                                        and prevent some or all legitimate requests from being fulfilled.
                                    </p>
                                    <div class="row color-darkgrey">
                                        <div class="col-4">
                                            <em><i>Uploaded by:</i> Steven</em>
                                        </div>
                                        <div class="col-4">
                                            <em><i>Uploaded date:</i> 03-09-2020</em>
                                        </div>
                                        <div class="col-4">
                                            <em><i>Upvotes:</i> 210</em>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="articleCols col-12">
                            <div id="articleId-1" class="row rounded border my-3 ml-2 p-2 mouseOnHover" data-by="" data-date="">
                                <div class="col-2">
                                    <img 
                                        src="https://cdn0.iconfinder.com/data/icons/cyber-crime-or-threats-glyph/120/ddos_attack_denial_of_service-512.png" 
                                        class="img-fluid img-thumbnail" alt="Not found">
                                </div>
                                <div class="col-10 article_content">
                                    <h3 class="color-lightslategray"><u>Denial of Service</u></h3>
                                    <p class="small">Denial of Service (DOS) is a cyber-attack on an individual Computer or 
                                        Website with intent to deny services to intended users.Their purpose is 
                                        to disrupt an organization’s network operations by denying access to its 
                                        users.Denial of service is typically accomplished by flooding the targeted 
                                        machine or resource with surplus requests in an attempt to overload systems 
                                        and prevent some or all legitimate requests from being fulfilled.
                                    </p>
                                    <div class="row color-darkgrey">
                                        <div class="col-4">
                                            <em><i>Uploaded by:</i> Steven</em>
                                        </div>
                                        <div class="col-4">
                                            <em><i>Uploaded date:</i> 03-09-2020</em>
                                        </div>
                                        <div class="col-4">
                                            <em><i>Upvotes:</i> 210</em>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script type="text/javascript">
                $(document).ready(function () {
                    $("#sidebar").mCustomScrollbar({
                        theme: "minimal"
                    });

                    $('#sidebarCollapse').on('click', function () {
                        $('#sidebar, #content').toggleClass('active');
                        $('.collapse.in').toggleClass('in');
                        $('a[aria-expanded=true]').attr('aria-expanded', 'false');
                    });
                    $(document).on('click','.articleId-1',function () {
                        var id = $(this).data('id');
                        window.location.replace("artViewerPage.jsp?art_id="+id);
                    });
                    $.ajax({
                        url: "/DiTuSte_Cryto/articleAddServlet?action=_all",
                        method: "GET",
                        dataType: "JSON"
                    }).done(function (data) {
                        console.log(data);
                        $('.articles').empty();
                        $.each(data, function (i, v) {
                            $('.articles').append(""+
                                "<div class='articleCols col-12'>"+
                                    "<div id='articleId-1' class='row rounded border my-4 ml-2 p-2 mouseOnHover articleId-1' data-id='"+v.lab_id+"' data-by='"+v.lab_user+"' data-date='"+v.posted_on+"'>"+
                                        "<div class='col-2'>"+
                                            "<img "+
                                                "src='https://cdn0.iconfinder.com/data/icons/cyber-crime-or-threats-glyph/120/ddos_attack_denial_of_service-512.png' "+
                                                "class='img-fluid img-thumbnai' alt='Not found'>"+
                                        "</div>"+
                                        "<div class='col-10 article_content'>"+
                                            "<h3 class='color-lightslategray'><u>"+v.title+"</u></h3>"+
                                            "<p class='small'>"+
                                            v.description+
                                            "</p>"+
                                            "<div class='row color-darkgrey'>"+
                                                "<div class='col-4'>"+
                                                    "<em><i>Uploaded by:</i> "+v.lab_user+"</em>"+
                                                "</div>"+
                                                "<div class='col-4'>"+
                                                    "<em><i>Uploaded date:</i>"+v.posted_on+"</em>"+
                                                "</div>"+
                                                "<div class='col-4'>"+
                                                   " <em><i>Upvotes:</i> "+v.rating+"</em>"+
                                                "</div>"+
                                            "</div>"+
                                       "</div>"+
                                    "</div>"+
                                "</div>"+
                        "");
                        });
                    }).fail(function (e) {
                        console.log(e);
                    });
                });
            </script>
    
        </div></body>

</html>