<%include "header.gsp"%>
    <body onload="prettyPrint()">
      <div id="wrap">
	    <%include "menu.gsp"%>
	    <div class="container">
	
	      <div class="page-header">
		    <h1>${content.title}</h1>
	      </div>

          <p><em>${new java.text.SimpleDateFormat("dd MMMM yyyy", Locale.ENGLISH).format(content.date)}</em></p>

        <%
            //combine data and template
            def template
            try {
                def engine = new groovy.text.SimpleTemplateEngine()
                // clean up the body
                // (Asciidoctor replaces a bit too much)
                body = content.body
                        .replaceAll("&#8594;", "->")
                        .replaceAll("&lt;%", "<%")
                        .replaceAll("%&gt;", "%"+">")
                template = engine.createTemplate(body).make([content:content, published_posts:published_posts])
            } catch (Exception e) {
                out << e.message
            }
        %>

	      <p>${template}</p>

	      <hr />
        </div>
	    <div id="push"></div>
      </div>
<%include "footer.gsp"%>