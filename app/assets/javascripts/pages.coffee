# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

journal = angular.module('journal', [
      'templates',
      'ngRoute',
      'controllers',
      'ngAnimate',
      'ui.bootstrap'
])

journal.config(['$routeProvider',
        ($routeProvider)->
          $routeProvider
              .when('/',
                      templateUrl: "home.html.erb"
                      controller: "Pages"
                   )
              .otherwise(
                    redirectTo:"/"
              )
])

controllers = angular.module('controllers', [])

controllers.controller('Pages', [ '$scope',
  ($scope)->
    $scope.items = [
      'The first choice!',
      'And another choice for you.',
      'but wait! A third!'
    ];

    $scope.status = {
      isopen: false
    };

    $scope.toggleDropdown = ($event) ->
      $event.preventDefault()
      $event.stopPropagation()
      $scope.status.isopen = !$scope.status.isopen

])
