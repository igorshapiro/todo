class window.SessionsController
  constructor: ($scope, Session) ->
    $scope.logIn = ->
      Session.create({email: $scope.email},
        (data) ->
          window.location = "/todo_items"
      )

window.SessionsController.$inject = ['$scope', 'Session']