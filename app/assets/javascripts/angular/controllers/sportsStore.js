angular.module("sportsStore")
.constant("categoriesUrl", "http://localhost:3000/categories")
.constant("productsUrl", "http://localhost:3000/products")
.constant("ordersUrl", "http://localhost:3000/orders")
.controller("sportsStoreCtrl", function ($scope, $http, categoriesUrl, productsUrl, ordersUrl, cart) {

  $scope.data = {};

  $http.get(categoriesUrl)
  .success(function (data) {
    $scope.data.categories = data;
  })
  .error(function (error) {
    $scope.data.error = error;
  });

  $http.get(productsUrl)
  .success(function (data) {
    $scope.data.products = data;
  })
  .error(function (error) {
    $scope.data.error = error;
  });

  $scope.sendOrder = function (shippingDetails) {
    var order = angular.copy(shippingDetails);
    order.products = cart.getProducts();
    $http.post(ordersUrl, order)
    .success(function (data) {
      $scope.data.orderId = data.id;
      cart.getProducts().length = 0;
    })
    .error(function (error) {
      $scope.data.orderError = error;
    }).finally(function () {
      $location.path("/complete");
    });
  }
});
