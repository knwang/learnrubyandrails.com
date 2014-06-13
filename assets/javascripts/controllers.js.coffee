window.AppController = ($scope, $http) ->
  $http.get("/data").success (data) ->
    $scope.resources = data

  manageTopics($scope)
  manageCategories($scope)
  manageCourseTypes($scope)

manageTopics = ($scope) ->
  $scope.topics = ['Ruby', 'Rails']
  $scope.topicSelected = 'Ruby'

  $scope.selectTopic = (topic) ->
    $scope.topicSelected = topic

  $scope.topicClass = (topic) ->
    if $scope.topicSelected == topic then 'label label-important' else undefined

manageCourseTypes = ($scope) ->
  $scope.courseTypes = ['Instructor Led', 'Self Study']
  $scope.courseTypeSelected = undefined

  $scope.selectCourseType = (courseType) ->
    $scope.courseTypeSelected = courseType

  $scope.courseTypeClass = (courseType) ->
    if $scope.courseTypeSelected == courseType then 'label label-important' else undefined

manageCategories = ($scope) ->
  $scope.categories = ['Tutorials', 'Online Courses', 'Screencasts']
  $scope.categorySelected = 'Tutorials'

  $scope.selectCategory = (category) ->
    $scope.categorySelected = category
    if category == 'Online Courses' then $scope.courseTypeSelected = 'Instructor Led' else $scope.courseTypeSelected = undefined

  $scope.categoryClass = (category) ->
    if $scope.categorySelected == category then 'label label-important' else undefined
  manageCourseTypes($scope)
