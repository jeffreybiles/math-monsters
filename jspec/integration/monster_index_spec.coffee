describe "monsterdex", ->
  
  beforeEach ->
    visit "/monsters"

  it "shows the right amount of data", ->
    expect($('.monsters .monster:eq(0)').text()).to.include "Stannis, a level 2 King"

  it "has two monsters", ->
    expect($('.monsters .monster').length).to.equal 2

  describe "clicking a monster link", ->
    beforeEach ->
      click '.monsters .monster:eq(0) a'

    it "keeps the monster index", ->
      expect($('.monsters .monster:eq(0)').text()).to.include "Stannis, a level 2 King"


    it "shows the monster detail view", ->
      expect($('.monster-details .name').text()).to.include "Stannis"

  describe "new monster form", ->
    beforeEach ->
      click '.create-monster'

    it "is on new monster form", ->
      expect(currentRouteName()).to.equal('monsters.new')
