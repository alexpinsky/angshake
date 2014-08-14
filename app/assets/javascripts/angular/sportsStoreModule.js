angular.module("sportsStore", ["customFilters", "cart", "ngRoute"])
.config(function ($routeProvider) {
  $routeProvider.when("/complete", {
    templateUrl: "assets/thankYou.html"
  });
  $routeProvider.when("/placeorder", {
    templateUrl: "assets/placeOrder.html"
  });
  $routeProvider.when("/checkout", {
    templateUrl: "assets/checkoutSummary.html"
  });
  $routeProvider.when("/products", {
    templateUrl: "assets/productList.html"
  });
  $routeProvider.otherwise({
    templateUrl: "assets/productList.html"
  });
});