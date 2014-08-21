'use strict'

angular.module 'sekprotoxApp'
.config ($stateProvider) ->
  $stateProvider.state 'proto',
    url: '/proto'
    templateUrl: 'app/proto/proto.html'
    controller: 'ProtoCtrl'
