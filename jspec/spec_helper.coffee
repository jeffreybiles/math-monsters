chai.Assertion.includeStack = true
Ember.testing = true
Ember.Test.adapter = Ember.Test.MochaAdapter.create()
App.setupForTesting()
App.injectTestHelpers()

window.start = ->
window.stop = ->

beforeEachWithoutEmberRun = this.beforeEach
this.beforeEach = (fn)->
  beforeEachWithoutEmberRun -> Ember.run => fn.call(this)

afterEachWithoutEmberRun = this.afterEach
this.afterEach = (fn)->
  afterEachWithoutEmberRun -> Ember.run => fn.call(this)

beforeEach ->
  App.advanceReadiness()
  @store = App.__container__.lookup("store:main")


beforeEach ->
  @build = (typeKey, options) =>
    object = @store.createRecord typeKey, options
    object.save()
    return object

beforeEach ->
  clearFixturesFor(['Monster', 'Species'])
  @king = @build('species', {name: 'King'})
  @stannis = @build('monster', {name: 'Stannis', species: @king, level: 2, expToNextLevel: 100, power: 5, maxHp: 15, defense: 2})
  @geoffrey = @build('monster', {name: 'Geoffrey', species: @king, level: 1, expToNextLevel: 150, power: 10, maxHp: 6, defense: 1})
  
afterEach ->
  App.reset()


clearFixturesFor = (types) ->
  types.forEach (type) ->
    App[type].FIXTURES = []