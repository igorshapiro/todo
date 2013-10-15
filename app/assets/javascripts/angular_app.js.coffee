angular.module('cellroxServices', ['ngResource'])
  .factory('Session', ['$resource', ($resource) ->
    $resource('/sessions/:id', {ajax: 1}, {
      create: {method: 'POST', isArray: false}
    })
  ])
  .factory('TodoItem', ['$resource', ($resource) ->
    $resource('/todo_items/:id', {ajax: 1}, {
      create: {method: 'POST', isArray: false},
      moveUp: {method: 'PUT', params: {move: 'up'}, isArray: false},
      moveDown: {method: 'PUT', params: {move: 'down'}, isArray: false},
      markDone: {method: 'PUT', params: {done: 'true'}, isArray: false},
      markUndone: {method: 'PUT', params: {undone: 'true'}, isArray: false}
    })
  ])

window.cellroxApp = angular.module('cellroxApp', ['ngResource', 'ui.bootstrap', 'cellroxServices'])
window.cellroxApp.config(['$httpProvider', ($httpProvider) ->
    $httpProvider.defaults.headers.common['X-CSRF-Token']= $("meta[name='csrf-token']").attr("content")
    $httpProvider.defaults.headers.common['Content-Type']= 'application/json'
    $httpProvider.defaults.headers.common['Pragma'] = 'no-cache'
    $httpProvider.defaults.headers.common['Cache-Control'] = 'no-cache'
    $httpProvider.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest'
  ])
  .directive('eatClick', -> ((scope, element, attrs)-> $(element).click((ev)->ev.preventDefault())))
