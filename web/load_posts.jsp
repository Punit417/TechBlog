<%@page import="java.util.List"%>
<%@page import="com.tech.blog.entities.Post"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>

<div class="row">
<%
    PostDao d = new PostDao(ConnectionProvider.getConnection());
     List<Post> posts=d.getAllPods();
    for (Post p : posts) {
%>
<div class="col-md-6 mt-2">
    <div class="card">
        <img class="card-img-top" src="blog_pics/<%=p.getpPic() %>" alt="Card image cap">
        <div class="card-body">
            <b><%=p.getpTitle() %></b>
            <p><%=p.getpContent() %> </p>
            
            <div class="card-footer text-center " >
                <a href="#!" class="btn btn-outline-primary btn-sm"><i class="fa fa-thumbs-o-up"><span>10</span></i></a>
                <a href="#!" class="btn btn-outline-primary btn-sm">Read More....</a>
                <a href="#!" class="btn btn-outline-primary btn-sm"><i class="fa fa-commenting-o"><span>20</span></i></a>
            </div>
            <pre><%=p.getpCode() %></pre>
        </div>
    </div>
</div>

<%
    }
%>
</div>