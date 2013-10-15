class window.TodoItemsController
  constructor: ($scope, TodoItem) ->
    $scope.reload = -> $scope.todos = TodoItem.query()
    $scope.reload()

    $scope.moveDown = (todo) -> todo.$moveDown({id: todo.id}, -> $scope.reload())
    $scope.moveUp = (todo) -> todo.$moveUp({id: todo.id}, -> $scope.reload())

    $scope.addTodo = ->
      TodoItem.create({
        title: $scope.newTodoTitle, 
        description: $scope.newTodoDescription, 
        due_date: $scope.newTodoDueDate
      }, ->
        $scope.reload()
      )

window.TodoItemsController.$inject =  ['$scope', 'TodoItem']
