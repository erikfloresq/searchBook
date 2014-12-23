app = angular.module("SearchBook", [])
app.controller "search", [
  "$scope"
  "$http"
  ($scope, $http) ->
    $scope.searchBook = ->
      $http(
        method: "GET"
        url: "http://it-ebooks-api.info/v1/search/" + $scope.nameBook
      ).success((data, status, headers, config) ->
        $scope.books = data.Books
        return
      ).error (data, status, headers, config) ->

      return

    $scope.showDetail = (idBook) ->
      $http(
        method: "GET"
        url: "http://it-ebooks-api.info/v1/" + "book/" + idBook
      ).success((data, status, headers, config) ->
        $scope.details = data
        $("#myModal").modal()
        return
      ).error (data, status, headers, config) ->

      return
]