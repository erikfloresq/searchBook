app = angular.module 'SearchBook', []
app.controller 'search', ['$scope','$http', ($scope,$http)->
	$scope.searchBook = ->
		$http(
			method : 'GET'
			url : 'http://it-ebooks-api.info/v1/search/'+$scope.nameBook
		)
		.success((data, status, headers, config)->
			$scope.books = data.Books
		)
		.error((data, status, headers, config)->

		)
]