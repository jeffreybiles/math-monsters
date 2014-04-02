App.Monster = DS.Model.extend
  name: DS.attr('string')
  species: DS.belongsTo("species")

App.Monster.FIXTURES = [{
  id: 1
  name: 'Stannis'
  species: 1
}]

    # @monster = @store.createRecord 'monster', 
    #   name: 'Stannis'
    #   level: 2
    #   speciesId: 1
    #   expToNextLevel: 100
    #   power: 5
    #   hp: 15
    #   defense: 2