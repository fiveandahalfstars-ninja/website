	<!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>index.html">Home</a></li>
<!--li><a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>ralfdmueller.html">About</a></li -->
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Vorträge <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>talks/johannesdienst_talks.html">Johannes Dienst</a></li>
                <li><a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>talks/rdm.html">Ralf D. Müller</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Über <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>johannesdienst">Johannes Dienst</a></li>
                <li><a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>rdmueller">Ralf D. Müller</a></li>
              </ul>
            </li>
<!-- li><a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>talks.html">Talks</a></li -->
            <li><a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>${config.feed_file}">RSS</a></li>
            <li><a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>impressum.html"">Impressum</a></li>
            <!-- li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li-->
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>
