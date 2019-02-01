require 'rails_helper'

RSpec.describe 'when visitor visits songs index', type: :feature do
  it "should show all astronauts with their name, age, and job" do
    astronaut_1 = Astronaut.create(name: "Scott", age: 30, job: "astronaut")

    visit astronauts_path

    expect(page).to have_content(astronaut_1.name)
    expect(page).to have_content(astronaut_1.age)
    expect(page).to have_content(astronaut_1.job)
  end

  it "should show a list of the space missions in alphabetical order" do
    astronaut_1 = Astronaut.create(name: "Scott", age: 30, job: "astronaut")
    mission_1 = Mission.create(title: "Apollo 13" )
    mission_2 = Mission.create(title: "Venus 1" )
    mission_3 = Mission.create(title: "Jupiter 38" )

    visit astronauts_path

    expect(page).to have_content(mission_1.title)
    expect(page).to have_content(mission_2.title)
    expect(page).to have_content(mission_3.title)
  end
end
