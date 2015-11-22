# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

signup = angular.module('signup', [
    'templates',
    'ngRoute',
    'controllers',
    'ngAnimate',
    'ui.bootstrap'
  ])

signup.config(['$routeProvider',
    ($routeProvider)->
      $routeProvider
        .when('/new',
          templateUrl: "new.html.erb"
          controller: "Signups"
          )
        .otherwise(
          redirectTo: "/new"
        )
  ])

controllers = angular.module('controllers', [])

controllers.controller('Signups', ['$scope',
    ($scope)->

  ])
