# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
  @resource 'monsters', ->
    @resource 'monster', {path: ":id"}
  # @resource('posts')

App.MonsterRoute = Ember.Route.extend
  model: (params) ->
    @store.find('monster', params.id)