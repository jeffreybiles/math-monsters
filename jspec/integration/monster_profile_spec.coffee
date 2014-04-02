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