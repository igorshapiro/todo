angular.module('cellroxServices', ['ngResource'])
  .factory('Session', ['$resource', ($resource) ->
    $resource('/sessions', {ajax: 1}, {
      create: {method: 'POST', isArray: false}
    })
  ])
  .factory('TodoItem', ['$resource', ($resource) ->
    $resource('/todo_items', {ajax: 1}, {
      create: {method: 'POST', isArray: false}
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
