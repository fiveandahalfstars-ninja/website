<%include "header.gsp"%>
    <body onload="prettyPrint()">
	  <div id="wrap">
	    <%include "menu.gsp"%>
        <div class="container">

	      <%published_posts.each {post ->%>
		    <div class="row article-preview-row">
			  <div class="col-md-12">
			    <div class="article-preview-box">
					<div class="row">
						<div class="col-md-10 col-xs-12 col-sm-12">
							<h1><a href="${post.uri}">${post.title}</a></h1>
							<p>${new java.text.SimpleDateFormat("dd MMMM yyyy", Locale.ENGLISH).format(post.date)}</p>
							${post.body.replaceAll('<[^>]*>','').trim().replaceAll("[\r]",'').replaceAll("\n","|").split("[|][|]")[0].replaceAll("[|]","")}
						</div>
						<div class="hidden-xs hidden-sm col-md-2" style="padding: 15px 15px 0 15px">
							<img src="/images/profiles/${post.author}.jpg" alt="${post.author}">
						</div>
					</div>
				</div>
			  </div>
		    </div>
  	      <%}%>

		  <p>Older posts are available in the <a href="${content.rootpath}${config.archive_file}">archive</a>.</p>
        </div>
	    <div id="push"></div>
	  </div>
<%include "footer.gsp"%>
