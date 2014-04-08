App.MonsterEditController = Ember.ObjectController.extend
  actions:
    saveChanges: ->
      @get("model").save().then =>
        @transitionToRoute "monster.show", this