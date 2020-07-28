<%include "header.gsp"%>
    <body onload="prettyPrint()">
	  <div id="wrap">
	    <%include "menu.gsp"%>
        <div class="container">

	      <div class="page-header">
		    <h1>Softwarecrafter Johannes Dienst</h1>
			  <a href="mailto:info@johannesdienst.net"><i class="fa fa-envelope header-icons" aria-hidden="true"></i></a>
			  <a href="https://github.com/JohannesDienst"><i class="fa fa-github-square header-icons"></i></a>
			  <a href="http://twitter.com/JohannesDienst"><i class="fa fa-twitter header-icons" aria-hidden="true"></i></a>
	      </div>

	      <%published_posts.each {post ->%>
		    <a href="${post.uri}"><h1>${post.title}</h1></a>
		    <p>${new java.text.SimpleDateFormat("dd MMMM yyyy", Locale.ENGLISH).format(post.date)}</p>
		    ${post.body}
			<hr class="post-separator">
  	      <%}%>

		  <p>Older posts are available in the <a href="${content.rootpath}${config.archive_file}">archive</a>.</p>
        </div>
	    <div id="push"></div>
	  </div>
<%include "footer.gsp"%>