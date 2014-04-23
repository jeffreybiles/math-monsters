App.Species = DS.Model.extend
  name: DS.attr('string')
  monsters: DS.hasMany('monster')
  
App.Species.FIXTURES = [{
  id: 1
  name: 'King'
  monsters: [1, 2]
}, {
  id: 2
  name: 'Priest'
}]