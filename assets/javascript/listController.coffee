ngapp = angular.module "phoneStore", []

ngapp.controller 'PhonelistController', () ->
  @phones = [
    'name':'Nexus S'
    'snippet':'Fast ust got faster with Nexus S.'
  ]
  return
