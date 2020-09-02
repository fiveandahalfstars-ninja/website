<%include "header.gsp"%>
    <body onload="prettyPrint()">
	  <div id="wrap">
	    <%include "menu.gsp"%>
        <div class="container">

	      <div class="page-header">
		      <h1><span style="border: 4px solid black; background: lightgray;padding: 4px 4px; border-radius: 6px;">⭐⭐⭐⭐⭐</span><span style="padding: 4px 4px; display: inline-grid;width: 0.7em;overflow: hidden;">⭐</span><span style="padding: 4px 4px;"> &nbsp;- Ninja</span></h1>
		      
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
