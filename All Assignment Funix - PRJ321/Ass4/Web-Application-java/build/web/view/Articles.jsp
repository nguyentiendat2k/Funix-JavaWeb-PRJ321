<%@page import="java.util.List"%>
<%@page import="entity.Article"%>
<%@page import="model.ArticleDao"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
    Document   : Posts
    Created on : Jan 10, 2019, 10:56:02 PM
    Author     : demonslight998
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../fragment/header.jsp" />

<body id="page-top">

  <jsp:include page="../fragment/navIndex.jsp" />

  <div class="container-fluid p-0">
    <hr class="m-0">

    <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="experience">
      <div class="my-auto">
        <%
          ArticleDao articleDao = new ArticleDao();
          List<Article> listArticles = articleDao.getAllArticles();
          request.setAttribute("listArticles", listArticles);
          request.getRequestDispatcher("./view/Articles.jsp");
        %>
        <h2 class="mb-5">The Articles</h2>

        <c:forEach var="art" items="${listArticles}">
          <div class="resume-item d-flex flex-column flex-md-row mb-5">
            <div class="resume-content mr-auto">
              <h3 class="mb-0" ><a style="color: #2196F3" href="ArticleDetails?id=${art.getId()}">${art.getTitle()}</a></h3>
              <h5 class="mb-0"><a href="EditArticle?id=${art.getId()}">Edit</a></h5>
              <div class="subheading mb-3">${art.getTopic()}</div>
              <p>${art.getContents()}</p>
            </div>
            <div class="resume-date text-md-right">
              <span class="text-primary">${art.getCreatedAt()}</span>
            </div>
          </div>
        </c:forEach>
      </div>
    </section>

    <hr class="m-0">

    <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="education">
      <div class="my-auto">
        <h2 class="mb-5">Education</h2>

        <div class="resume-item d-flex flex-column flex-md-row mb-5">
          <div class="resume-content mr-auto">
            <h3 class="mb-0">University of Colorado Boulder</h3>
            <div class="subheading mb-3">Bachelor of Science</div>
            <div>Computer Science - Web Development Track</div>
            <p>GPA: 3.23</p>
          </div>
          <div class="resume-date text-md-right">
            <span class="text-primary">August 2006 - May 2010</span>
          </div>
        </div>

        <div class="resume-item d-flex flex-column flex-md-row">
          <div class="resume-content mr-auto">
            <h3 class="mb-0">James Buchanan High School</h3>
            <div class="subheading mb-3">Technology Magnet Program</div>
            <p>GPA: 3.56</p>
          </div>
          <div class="resume-date text-md-right">
            <span class="text-primary">August 2002 - May 2006</span>
          </div>
        </div>

      </div>
    </section>

    <hr class="m-0">

    <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="skills">
      <div class="my-auto">
        <h2 class="mb-5">Skills</h2>

        <div class="subheading mb-3">Programming Languages &amp; Tools</div>
        <ul class="list-inline dev-icons">
          <li class="list-inline-item">
            <i class="fab fa-html5"></i>
          </li>
          <li class="list-inline-item">
            <i class="fab fa-css3-alt"></i>
          </li>
          <li class="list-inline-item">
            <i class="fab fa-js-square"></i>
          </li>
          <li class="list-inline-item">
            <i class="fab fa-angular"></i>
          </li>
          <li class="list-inline-item">
            <i class="fab fa-react"></i>
          </li>
          <li class="list-inline-item">
            <i class="fab fa-node-js"></i>
          </li>
          <li class="list-inline-item">
            <i class="fab fa-sass"></i>
          </li>
          <li class="list-inline-item">
            <i class="fab fa-less"></i>
          </li>
          <li class="list-inline-item">
            <i class="fab fa-wordpress"></i>
          </li>
          <li class="list-inline-item">
            <i class="fab fa-gulp"></i>
          </li>
          <li class="list-inline-item">
            <i class="fab fa-grunt"></i>
          </li>
          <li class="list-inline-item">
            <i class="fab fa-npm"></i>
          </li>
        </ul>

        <div class="subheading mb-3">Workflow</div>
        <ul class="fa-ul mb-0">
          <li>
            <i class="fa-li fa fa-check"></i>
            Mobile-First, Responsive Design</li>
          <li>
            <i class="fa-li fa fa-check"></i>
            Cross Browser Testing &amp; Debugging</li>
          <li>
            <i class="fa-li fa fa-check"></i>
            Cross Functional Teams</li>
          <li>
            <i class="fa-li fa fa-check"></i>
            Agile Development &amp; Scrum</li>
        </ul>
      </div>
    </section>

    <hr class="m-0">

    <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="interests">
      <div class="my-auto">
        <h2 class="mb-5">Interests</h2>
        <p>Apart from being a web developer, I enjoy most of my time being outdoors. In the winter, I am an avid skier and novice ice climber. During the warmer months here in Colorado, I enjoy mountain biking, free climbing, and kayaking.</p>
        <p class="mb-0">When forced indoors, I follow a number of sci-fi and fantasy genre movies and television shows, I am an aspiring chef, and I spend a large amount of my free time exploring the latest technology advancements in the front-end web development world.</p>
      </div>
    </section>

    <hr class="m-0">

    <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="awards">
      <div class="my-auto">
        <h2 class="mb-5">Awards &amp; Certifications</h2>
        <ul class="fa-ul mb-0">
          <li>
            <i class="fa-li fa fa-trophy text-warning"></i>
            Google Analytics Certified Developer</li>
          <li>
            <i class="fa-li fa fa-trophy text-warning"></i>
            Mobile Web Specialist - Google Certification</li>
          <li>
            <i class="fa-li fa fa-trophy text-warning"></i>
            1<sup>st</sup>
            Place - University of Colorado Boulder - Emerging Tech Competition 2009</li>
          <li>
            <i class="fa-li fa fa-trophy text-warning"></i>
            1<sup>st</sup>
            Place - University of Colorado Boulder - Adobe Creative Jam 2008 (UI Design Category)</li>
          <li>
            <i class="fa-li fa fa-trophy text-warning"></i>
            2<sup>nd</sup>
            Place - University of Colorado Boulder - Emerging Tech Competition 2008</li>
          <li>
            <i class="fa-li fa fa-trophy text-warning"></i>
            1<sup>st</sup>
            Place - James Buchanan High School - Hackathon 2006</li>
          <li>
            <i class="fa-li fa fa-trophy text-warning"></i>
            3<sup>rd</sup>
            Place - James Buchanan High School - Hackathon 2005</li>
        </ul>
      </div>
    </section>

  </div>

  <jsp:include page="../fragment/footer.jsp" />
