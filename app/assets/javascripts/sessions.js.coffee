class window.SessionsController
  constructor: ($scope, Session) ->
    $scope.logIn = ->
      Session.create({}, {email: $scope.email},
        (data) ->
          window.location = "/todo_items"
      )
    $scope.logOut = ->
      Session.delete({id: 'current'},
        window.location = "/"
      )

window.SessionsController.$inject = ['$scope', 'Session']