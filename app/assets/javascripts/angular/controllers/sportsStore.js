angular.module("sportsStore")
  .constant("categoriesUrl", "http://localhost:3000/categories")
  .constant("productsUrl", "http://localhost:3000/products")
  .controller("sportsStoreCtrl", function ($scope, $http, categoriesUrl, productsUrl) {

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
  });
