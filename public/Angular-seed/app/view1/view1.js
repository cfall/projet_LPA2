'use strict';

angular.module('myApp.view1', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/view1', {
    templateUrl: 'view1/view1.html',
    controller: 'View1Ctrl'
  });
}])

.controller('View1Ctrl', ['$scope', '$resource', function($scope, $resource) {
  
  var user = $resource('/users/:id.json', {userId:'@id'}) //Creation de la ressource
  $scope.users = user.query() //Recuperation de la liste des donnees de maniere dynamique
  
}]);

