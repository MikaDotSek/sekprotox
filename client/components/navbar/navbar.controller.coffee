'use strict'

angular.module 'sekprotoxApp'
.controller 'NavbarCtrl', ($scope, $location, Auth) ->
  $scope.menu = [
    {
      title: 'Style'
      link: '/styletile'
    }
    {
      title: 'Proto'
      link: '/proto'
    }
  ]
  $scope.isCollapsed = true
  $scope.isLoggedIn = Auth.isLoggedIn
  $scope.isAdmin = Auth.isAdmin
  $scope.getCurrentUser = Auth.getCurrentUser

  $scope.logout = ->
    Auth.logout()
    $location.path '/login'

  $scope.isActive = (route) ->
    route is $location.path()