<html>
    <head>
        <title>Fake your JSON-Schemas!</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" type="image/icon" href="favicon.ico" />
        <link href="vendor.css" rel="stylesheet">
        <link href="bundle.css" rel="stylesheet">
        <script src="vendor.js"></script>
        <script src="bundle.js"></script>

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <!-- Fixed navbar -->
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">json-schema-faker</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Samples <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li class="dropdown-header">faker.js</li>
                                <li><a href="#" id="example_faker" data-toggle="collapse" data-target=".navbar-collapse">faker example</a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header">chance.js</li>
                                <li><a href="#" id="example_chance" data-toggle="collapse" data-target=".navbar-collapse">chance example</a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header">array</li>
                                <li><a href="#" id="example_array_enum" data-toggle="collapse" data-target=".navbar-collapse">enums</a></li>
                                <li><a href="#" id="example_array_fixed" data-toggle="collapse" data-target=".navbar-collapse">fixed values</a></li>
                                <li><a href="#" id="example_array_nTimes" data-toggle="collapse" data-target=".navbar-collapse">n-times repeated</a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header">other</li>
                                <li><a href="#" id="example_reference" data-toggle="collapse" data-target=".navbar-collapse">reference</a></li>
                                <li><a href="#" id="example_integer" data-toggle="collapse" data-target=".navbar-collapse">integer</a></li>
                                <li><a href="#" id="example_boolean" data-toggle="collapse" data-target=".navbar-collapse">boolean</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Community <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="https://github.com/pateketrueke/json-schema-faker/">GitHub</a></li>
                                <li><a href="https://travis-ci.org/pateketrueke/json-schema-faker">CI</a></li>
                                <li><a href="https://github.com/pateketrueke/json-schema-faker/issues/new">Contribution</a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header">tools</li>
                                <li><a href="https://github.com/tkoomzaaskz/grunt-jsonschema-faker">Grunt plugin</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="https://github.com/marak/Faker.js/">faker.js</a></li>
                        <li><a href="http://chancejs.com/">chance.js</a></li>
                        <li><a href="http://fent.github.io/randexp.js/">randexp.js</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12">
                    <p><strong>JSON Schema Faker</strong> combines <a href="http://json-schema.org/">JSON Schema</a> standard with fake data generators, allowing users to generate fake data that conform to the schema.</p>
                    <p>This application is built using <a href="https://www.npmjs.com/package/json-schema-faker">json-schema-faker npm module</a> <strong>version <%- version %></strong> built with <a href="http://browserify.org/">browserify</a>.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            JSON Schema
                        </div>
                        <div class="panel-body">
                            <textarea class="form-control json" id="input"></textarea>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Sample object
                        </div>
                        <div class="panel-body">
                            <textarea class="form-control json" id="output"></textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row row-centered">
                <a class="btn btn-lg btn-primary" id="run" role="button">Generate sample</a>
            </div>
        </div> <!-- /container -->

        <a class="github-ribbon" href="https://github.com/pateketrueke/json-schema-faker">
            <img src="https://camo.githubusercontent.com/a6677b08c955af8400f44c6298f40e7d19cc5b2d/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f677261795f3664366436642e706e67" alt="Fork me on GitHub" data-canonical-src="https://s3.amazonaws.com/github/ribbons/forkme_right_gray_6d6d6d.png">
        </a>

        <script>
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

          ga('create', 'UA-62699942-1', 'auto');
          ga('send', 'pageview');
        </script>
    </body>
</html>
