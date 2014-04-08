describe "monster profile", ->

  beforeEach ->
    visit "/monsters/#{@stannis.get('id')}"

  it "shows the name of the monster", ->
    expect($(".name").text()).to.include('Stannis')

  it "shows the species name of the monster", ->
    expect($(".species-name").text()).to.include('King')

  it "shows the stats of the monster", ->
    expect($(".level").text()).to.include('2')
    expect($(".exp-to-next-level").text()).to.include('100')
    expect($('.power').text()).to.include('5')
    expect($('.max-hp').text()).to.include('15')
    expect($('.defense').text()).to.include('2')

  describe "edit page", ->
    beforeEach ->
      click '.edit-monster'

    it "should be in edit mode", ->
      expect(currentRouteName()).to.equal('monster.edit')

    describe "filling in the form", ->
      beforeEach ->
        fillIn 'form.edit-monster .name', 'Stanny'
        # fillIn 'form.edit-monster .species-name', ''
        fillIn 'form.edit-monster .level', '3'
        fillIn 'form.edit-monster .exp-to-next-level', '1500'
        fillIn 'form.edit-monster .power', '8'
        fillIn 'form.edit-monster .max-hp', '22'
        fillIn 'form.edit-monster .defense', '3'
        click 'form.edit-monster .submit'

      it "should display the new values", ->
        expect($(".name").text()).to.include('Stanny')
        # expect($(".species-name").text()).to.include('Priest')
        expect($(".level").text()).to.include('3')
        expect($(".exp-to-next-level").text()).to.include('150')
        expect($('.power').text()).to.include('8')
        expect($('.max-hp').text()).to.include('22')
        expect($('.defense').text()).to.include('3')