App.EditMonsterComponent = Ember.Component.extend
  actions:
    saveChanges: ->
      @get("monster").save().then =>
        App.Router.router.transitionTo "monster", @get('monster')

  currentSpecies: ((x, y, z) ->
    if y
      @get('monster').set('species', y)
    else
      @get('monster.species')
  ).property('monster.species', 'currentSpecies')

  speciesList: ( ->
    App.store.find('species')
  ).property()