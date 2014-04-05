App.Trainer = DS.Model.extend
  name: DS.attr('string')
  monsters: DS.hasMany('monster')
  beginningPhrase: DS.attr('string')
  endingPhrase: DS.attr('string')
  area: DS.belongsTo('area')

App.Trainer.FIXTURES = [{
  id: 1
  name: 'ash'
  beginningPhrase: 'gonna ketchum all'
  endingPhrase: "Now I'm just a pile of..."
  area: 1
  }]