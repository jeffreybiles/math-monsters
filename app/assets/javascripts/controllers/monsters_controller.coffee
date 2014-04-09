App.MonstersController = Ember.ArrayController.extend
  actions:
    destroyMonster: (monster) ->
      monster.destroyRecord()