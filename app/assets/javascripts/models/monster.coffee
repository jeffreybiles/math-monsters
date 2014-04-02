App.Monster = DS.Model.extend
  name: DS.attr('string')
  species: DS.belongsTo("species")
  level: DS.attr('number')
  expToNextLevel: DS.attr('number')
  power: DS.attr('number')
  maxHp: DS.attr('number')
  defense: DS.attr('number')

App.Monster.FIXTURES = [{
  id: 1
  name: 'Stannis'
  species: 1
  level: 2
  expToNextLevel: 100
  power: 5
  maxHp: 15
  defense: 2
}]