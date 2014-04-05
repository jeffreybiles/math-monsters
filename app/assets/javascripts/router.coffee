# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
  @resource 'monsters', ->
    @resource 'monster', {path: ":id"}
  @resource 'areas', ->
    @resource 'area', {path: ":id"}

App.MonsterRoute = Ember.Route.extend
  model: (params) ->
    @store.find('monster', params.id)

App.AreaRoute = Ember.Route.extend()


App.AreasRoute = Ember.Route.extend()
# App.AreasIndexRoute = Ember.Route.extend