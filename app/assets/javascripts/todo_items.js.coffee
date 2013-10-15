class window.TodoItemsController
  constructor: ($scope, TodoItem) ->
    $scope.todos = TodoItem.query()

    $scope.addTodo = ->
      TodoItem.create({
        title: $scope.newTodoTitle, 
        description: $scope.newTodoDescription, 
        due_date: $scope.newTodoDueDate
      }, ->
        $scope.todos = TodoItem.query()
      )

window.TodoItemsController.$inject =  ['$scope', 'TodoItem']
