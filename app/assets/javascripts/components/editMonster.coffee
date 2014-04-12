App.EditMonsterComponent = Ember.Component.extend
  actions:
    saveChanges: ->
      @get("monster").save().then =>
        @sendAction('transition', @get('monster'))

  currentSpecies: ((thing, selectedSpecies) ->
    if selectedSpecies
      @get('monster').set('species', selectedSpecies)
    else
      @get('monster.species')
  ).property('monster.species', 'currentSpecies')

  speciesList: ( ->
    App.store.find('species')
  ).property()