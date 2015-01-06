// Notes 

// connect it!
<!DOCTYPE html>
<html ng-app="gemStore">
  <head>
    <link rel="stylesheet" type="text/css" href="bootstrap.min.css" />
    <script type="text/javascript" src="angular.min.js"></script>
    <script type="text/javascript" src="app.js"></script>
  </head>
  <body>
    <h1>{{"Hello, Angular!"}}</h1>
  </body>
</html>

// ... 

var app = angular.module('<application name>', []);

var app = angular.module('<application name>', [<dependencies>]);


      <!-- Image Gallery  -->
      <div class="gallery">
        <div class="img-wrap">
          <img ng-src="{{product.images[0]}}" />
        </div>
        <ul class="img-thumbnails clearfix">
          <li class="small-image pull-left thumbnail" 
              ng-repeat="image in product.images">
          // Here we use the image in product.images as our source below
          <img ng-src="{{image}}" />
          </li>
        </ul>
      </div>