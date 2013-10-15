class window.TodoItemsController
  constructor: ($scope, TodoItem) ->
    $scope.reload = -> TodoItem.query({}, (data) -> $scope.todos = data)
    $scope.reload()

    $scope.moveDown = (todo) -> todo.$moveDown({id: todo.id}, -> $scope.reload())
    $scope.moveUp = (todo) -> todo.$moveUp({id: todo.id}, -> $scope.reload())
    $scope.toggleDone = (todo) -> 
      if todo.done_at
        todo.$markUndone({id: todo.id}, -> $scope.reload())
      else
        todo.$markDone({id: todo.id}, -> $scope.reload())

    $scope.addTodo = ->
      TodoItem.create({}, {
        title: $scope.newTodoTitle, 
        description: $scope.newTodoDescription, 
        due_at: $scope.newTodoDueAt
      }, ->
        $scope.newTodoDescription = null
        $scope.newTodoTitle = null
        $scope.newTodoDueAt = null
        $scope.reload()
      )

window.TodoItemsController.$inject =  ['$scope', 'TodoItem']
