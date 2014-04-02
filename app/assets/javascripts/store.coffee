App.ApplicationAdapter = DS.FixtureAdapter.extend
  simulateRemoteResponse: false  

Ember.onLoad 'Ember.Application', (Application) ->
  Application.initializer
    name: 'app.store'
    initialize: (container, application) ->
      application.store = container.lookup("store:main")