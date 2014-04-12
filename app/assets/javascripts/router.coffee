# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
  @resource 'monsters', ->
    @route 'new'  
    @resource 'monster', {path: ":id"}, ->
      @route 'show', {path: "/"}
      @route 'edit'
App.MonstersRoute = Ember.Route.extend
  model: ->
    @store.find('monster')

  actions: {
    goToShow: (monster) ->
      @transitionTo('monster.show', monster)
  }
App.MonstersNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord('monster')

App.MonsterRoute = Ember.Route.extend
  model: (params) ->
    @store.find('monster', params.id)