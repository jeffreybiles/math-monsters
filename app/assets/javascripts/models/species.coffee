App.Species = DS.Model.extend
  name: DS.attr('string')

App.Species.FIXTURES = [{
  id: 1
  name: 'King'
}, {
  id: 2
  name: 'Priest'
}]