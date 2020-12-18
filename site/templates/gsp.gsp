<%include "header.gsp"%>
<body onload="prettyPrint()">
<div id="wrap">
    <%include "menu.gsp"%>
    <div class="container">

        <%
            def template
            def body = ""
            try {
                //read data file
                def json = new File(content.datafile).text
                def data = new groovy.json.JsonSlurper().parseText(json)
                //combine data and template
                def engine = new groovy.text.SimpleTemplateEngine()
                // clean up the body
                // (Asciidoctor replaces a bit too much)
                body = content.body
                        .replaceAll("&#8594;", "->")
                        .replaceAll("&lt;", "<")
                        .replaceAll("&gt;", ">")
                        .replaceAll("&amp;", "&")
                template = engine.createTemplate(body).make(data)
            } catch (Exception e) {
                out << "<pre>"
                out << e.message
                out << body
                out << e.getStackTrace().join("\n")
                out << "</pre>"
            }
        %>

        <%= template %>

    </div>
</div>
<%include "footer.gsp"%>