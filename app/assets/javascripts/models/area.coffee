App.Area = DS.Model.extend
  name: DS.attr('string')
  trainers: DS.hasMany('trainer')
  description: DS.attr('string')

App.Area.FIXTURES = [{
  id: 1
  name: 'asherville'
  description: 'a place where children fight monsters'
}]