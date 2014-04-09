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

    describe "filling it out", ->
      beforeEach ->
        fillIn 'form.edit-monster .name', 'Stanny'
        # fillIn 'form.edit-monster .species-name', ''
        fillIn 'form.edit-monster .level', '3'
        click 'form.edit-monster .submit'

      it "is on show page", ->
        expect(currentRouteName()).to.equal('monster.show')

      it "has the updated stats", ->
        expect($(".name").text()).to.include('Stanny')
        # expect($(".species-name").text()).to.include('Priest')
        expect($(".level").text()).to.include('3')

  describe "destroy monster", ->
    beforeEach ->
      click '.destroy-monster:eq(0)'

    it "has one monster", ->
      expect($('.monsters .monster').length).to.equal 1
