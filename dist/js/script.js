var app;

app = angular.module('SearchBook', []);

app.controller('search', [
  '$scope', '$http', function($scope, $http) {
    $scope.searchBook = function() {
      $http({
        method: 'GET',
        url: 'http://it-ebooks-api.info/v1/search/' + $scope.nameBook
      }).success(function(data, status, headers, config) {
        $scope.books = data.Books;
      }).error(function(data, status, headers, config) {});
    };
  }
]);
