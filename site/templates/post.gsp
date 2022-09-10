<%include "header.gsp"%>
<%
	searchContentLang = content.lang=='de' ? 'en' : 'de'
	hasAnotherLanguageVersion = false
	anotherLanguageVersionLink = "anotherLanguageversion.html"
	anotherLanguageVersionPost = published_posts.find{
		post->
			(post.lang==searchContentLang)&&(post.pseudo==content.pseudo)
		}
	
	if (anotherLanguageVersionPost) {
		hasAnotherLanguageVersion = true
		anotherLanguageVersionLink = anotherLanguageVersionPost.uri
	}
	
	body = content.body.split("<div id=\"toc\" class=\"toc\">")
	if (body.size()==2) {
		toc = body[1].replaceAll("(?ms)(</div>[\r\n\t ]*){3}\$","")
		if (toc.trim().endsWith('</div>')) {

		} else {
			toc+='</div><!-- fixed -->'
		}
		body = body[0]
	} else {
		toc = ""
		body = content.body
	}
%>
    <body onload="prettyPrint()" ${content.toc?'class="toc2 toc-left"':''}>
      <div id="wrap">
	    <%include "menu.gsp"%>
	    <div class="container">
		  <div class="row article-preview-row">
			  <% if (toc=="") { %>
			  <div class="col-md-1">
				  <a href="/${content.author}.html" class="author-image"><img src="/images/profiles/${content.author}.jpg" alt="${content.author}" /></a>
			  </div>
			  <div class="col-md-11">

			  <div class="page-header">
				<h1>${content.title}</h1>
			  </div>

			  <p><em>${new java.text.SimpleDateFormat("dd MMMM yyyy", Locale.ENGLISH).format(content.date)}</em></p>
	      <p>${content.body}</p>

			  </div>
			  <% } else { %>
			  <div class="col-md-1">
			  <a href="/${content.author}.html" class="author-image"><img src="/images/profiles/${content.author}.jpg" alt="${content.author}" /></a>
		      </div>
			  <div class="col-md-11">
					  <h1>${content.title}</h1>
			  </div>
		  </div>
		  <div class="row">
			  <div class="col-md-3">
				  <p><em>${new java.text.SimpleDateFormat("dd MMMM yyyy", Locale.ENGLISH).format(content.date)}</em></p>
			  <div id="toc" class="toc">
				${toc}
		  	 </div>
			  <div class="col-md-9">
				<% if (hasAnotherLanguageVersion) { %>
			      <p style="font-size:25px; margin-bottom:20px;">
				     <% if (content.lang=='en') { %>
				     <a href="/${anotherLanguageVersionLink}">Für die Deutsche Version dieses Posts hier klicken</a>
					 <% } %>
					 <% if (content.lang=='de') { %>
				     <a href="/${anotherLanguageVersionLink}">English version of this post can be found here</a>
					 <% } %>
				  </p>
				<% } %>
				  <p>${body}</p>
			  </div>
			  </div>
			  <% } %>
		  </div>
	    </div>
	    <div id="push"></div>
	  </div>
	
<%include "footer.gsp"%>