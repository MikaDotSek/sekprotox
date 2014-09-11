'use strict'

angular.module 'sekprotoxApp'
.config ($stateProvider) ->
  $stateProvider.state 'styletile',
    url: '/styletile'
    templateUrl: 'app/styletile/styletile.html'
    controller: 'StyletileCtrl'
