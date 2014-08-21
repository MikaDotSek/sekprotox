'use strict'

describe 'Controller: ProtoCtrl', ->

  # load the controller's module
  beforeEach module 'sekprotoxApp'
  ProtoCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ProtoCtrl = $controller 'ProtoCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
