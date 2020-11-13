<!DOCTYPE html>
<html lang="en">
  <meta>
    <meta charset="utf-8"/>
    <title><%if (content.title) {%>${content.title}<% } else { %>Five and a Half Stars Ninja<% }%></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="${content.author}">
    <meta name="keywords" content="${content.tags}">
    <meta name="generator" content="JBake">

    <% if (content.type=="post") { %>
    <%
      //get first paragraph as teaser
      teaser = content.body.split("</p>")[0]
      if (teaser.size()<100) {
        teaser = content.body.split("</p>")[0]+"</p>"+content.body.split("</p>")[1]
      }
      //remove all tags
      teaser = teaser.replaceAll('<[^>]*>','').trim()
      //do we have an image?
      images = (content.body =~ /<img [^>]*>/)
      image = ""
      if (images.size()>0) {
        image = images[0].replace("width","xwidth")

      }
    %>
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:creator" content="@${content.author.replaceAll("rdmueller","ralfdmueller").replaceAll("jdienst","johannesdienst")}" />
    <meta property="og:url" content="${config.site_host+"/"+content.uri}" />
    <meta property="og:title" content="${content.title.replaceAll('"','&quot;')}" />
    <meta property="og:description" content="${teaser.replaceAll('"','&quot;')}" />
    <meta property="og:image" content="${config.site_host+image.replaceAll('.*src="([^"]*)".*','$1')}" />
  <% } %>
    <!-- Le styles -->
    <link href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>css/bootstrap.min.css" rel="stylesheet">
    <link href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>css/asciidoctor.css" rel="stylesheet">
    <link href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>css/base.css" rel="stylesheet">
    <link href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>css/prettify.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>css/blog.css" rel="stylesheet">

    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
    <link rel="manifest" href="/site.webmanifest">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>js/html5shiv.min.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <!--<link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">-->
    <link rel="shortcut icon" href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>favicon.ico">
  </head>
   