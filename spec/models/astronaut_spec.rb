require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :missions}
  end

  describe "class methods" do
    it ".get_average_age" do
      astronaut_1 = Astronaut.create(name: "Scott", age: 30, job: "astronaut")
      astronaut_2 = Astronaut.create(name: "Tim", age: 29, job: "super astronaut")
      astronaut_3 = Astronaut.create(name: "Oldie", age: 100, job: "astronaut")

      expect(Astronaut.get_average_age).to eq(53)



    end
  end
end
