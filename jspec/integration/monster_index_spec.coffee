describe "monsterdex", ->
  
  beforeEach ->
    console.log("before visiting")
    visit "/monsters"

  it "has two monsters", ->
    expect($('.monsters .monster').length).to.equal 2
