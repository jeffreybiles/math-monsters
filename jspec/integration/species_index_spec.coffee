describe.only "speciesdex", ->
  
  beforeEach ->
    @king = @build('species', {name: 'King', monsters: [@stannis, @geoffrey]})

  beforeEach ->
    visit "/speciess"

  it "shows the right amount of data", ->
    expect($('.speciess .species:eq(0)').text()).to.include "King"

  it "has two species", ->
    expect($('.speciess .species').length).to.equal 2

  describe "clicking a species link", ->
    beforeEach ->
      click '.speciess .species:eq(0) a'

    it "keeps the species index", ->
      expect($('.speciess .species:eq(0)').text()).to.include "King"


    it "shows the species detail view", ->
      expect($('.species-details .name').text()).to.include "King"

    it "shows the monsters of that species", ->
      debugger
      expect($('.species-details .monsters').length).to.equal 2
      expect($('.species-details .monsters .monster:eq(0)').text()).to.include 'Stannis'

