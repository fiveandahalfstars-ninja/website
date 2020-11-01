<%include "header.gsp"%>
    <body onload="prettyPrint()">
	  <div id="wrap">
	    <%include "menu.gsp"%>
        <div class="container">

	      <%published_posts[0..10].each {post ->%>
			  <!--%include "postpreview.gsp"%-->

		  <div class="row article-preview-row">
			  <div class="col-md-12">
				  <div class="article-preview-box">
					  <div class="row">
						  <%
								  //get first paragraph as teaser
								  teaser = post.body.split("</p>")[0]
								  if (teaser.size()<100) {
									  teaser = post.body.split("</p>")[0]+"</p>"+post.body.split("</p>")[1]
								  }
								  //remove all tags
								  teaser = teaser.replaceAll('<[^>]*>','').trim()
								  //do we have an image?
								  images = (post.body =~ /<img [^>]*>/)
								  if (images.size()>0) {
									  out << '<div class="hidden-xs col-md-2 col-sm-2" style="padding: 30px 15px 15px 15px;">'
									  out << images[0]
									  System.out.println images[0]
									  out << '</div><div class="col-md-8 col-xs-12 col-sm-10">'

								  } else {
									  out << '<div class="col-md-10 col-xs-12 col-sm-12">'
								  }
								  out << '<h1><a href="' + post.uri +'">'+post.title+'</a></h1>'
								  out << '<p>'+new java.text.SimpleDateFormat("dd MMMM yyyy", Locale.ENGLISH).format(post.date)+'</p>'
								  out << '<p>'+teaser+'</p>'
								  out << '</div>'
						  %>
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
