describe "monster profile", ->

  beforeEach ->
    saves = []
    build = (typeKey, options) =>
      object = @store.createRecord typeKey, options
      saves.push object.save()
      return object

    @king = build('species', {name: 'King'})
    @stannis = build('monster', {name: 'Stannis', species: @king})
    Ember.RSVP.all(saves)

  beforeEach ->
    visit "/monsters/#{@stannis.get('id')}"

  it "shows the name of the monster", ->
    expect($(".name").text()).to.equal('Stannis')

  it "shows the species name of the monster", ->
    expect($(".species-name").text()).to.equal('King')