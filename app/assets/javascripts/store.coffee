App.ApplicationAdapter = DS.ActiveModelAdapter.extend
  namespace: 'api/v1'
  
Ember.onLoad 'Ember.Application', (Application) ->
  Application.initializer
    name: 'app.store'
    initialize: (container, application) ->
      application.store = container.lookup("store:main")