<!DOCTYPE html>
<html>
    <head>
        <meta name="description" content="MyBlog">
        <title>Blog for {{name}}</title>
        <link type="text/css" rel="stylesheet" href="style/style.css">
    </head>
    <body>
        <div id="wrapper">
            <div id="upperBox">
                <ul id="Menu">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Menu1</a></span>
                        <ul id="SubMenu">
                            <li><a href="#">SubMenu1</a></li>
                            <li><a href="#">SubMenu2</a></li>
                            <li><a href="#">SubMenu3</a></li>
                            <li><a href="#">SubMenu4</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">Menu2</a>
                        <ul id="SubMenu2">
                            <li><a href="#">SubMenu1</a></li>
                            <li><a href="#">SubMenu2</a></li>
                            <li><a href="#">SubMenu3</a></li>
                            <li><a href="#">SubMenu4</a></li>
                        </ul>

                    </li>
                    <li><a href="#">Menu3</a></li>
                    <li><a href="#">Menu4</a></li>
                    <li><a href="#">Menu5</a></li>
                    <li><a href="#">Menu6</a></li>
                </ul>
            </div>
            <div id="mainBox">
                <div id="mainContent">
                    <ul id="artiList">
                        {% for article in articles: %}
                        <li>
                            <a href="#">{{article[0]}}</a>
                            <p>{{article[1]}}</p>
                            <div id="bottomTip">
                                <span id="src">大象网</span>
                                <span id="time">2015-4-8</span>
                            </div>
                        </li>
                        {% endfor %}
                    </ul>
                </div>
                <div id="sideBar">
                </div>
            </div>
        </div>
        <script type="text/javascript" src="js/main.js"></script>
    </body>
</html>
