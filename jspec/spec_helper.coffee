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
  @build = (typeKey, options) =>
    object = @store.createRecord typeKey, options
    object.save()
    return object

beforeEach ->
  App.reset()
  @store = App.__container__.lookup("store:main")