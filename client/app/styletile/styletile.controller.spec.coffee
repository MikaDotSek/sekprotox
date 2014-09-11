'use strict'

describe 'Controller: StyletileCtrl', ->

  # load the controller's module
  beforeEach module 'sekprotoxApp'
  StyletileCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    StyletileCtrl = $controller 'StyletileCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
