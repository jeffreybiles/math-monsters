describe 'finding and starting a battle', ->
  beforeEach ->
    @asheville = @build('area', {name: 'asheville', description: 'a place where children fight monsters'})
    @smashville = @build('area', {name: 'smashville', description: 'not a great place for thumbs'})
    visit '/areas'

  it 'should have 2 areas', ->
    expect($(".areas .area").count).to.equal(2)
# Go to areas screen
# see the correct number of areas
# click on an area
# see the description
# see the correct number of trainers
# click on a trainer
# see the trainer's info
# click battle button
# start battle