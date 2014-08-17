angular.module("sportsStoreAdmin", ["ngRoute", "ngResource", "ng-rails-csrf"])
.config(function ($routeProvider) {

  $routeProvider.when("/login", {
    templateUrl: "/assets/adminLogin.html"
  });

  $routeProvider.when("/main", {
    templateUrl: "/assets/adminMain.html"
  });

  $routeProvider.otherwise({
    redirectTo: "/login"
  });
});