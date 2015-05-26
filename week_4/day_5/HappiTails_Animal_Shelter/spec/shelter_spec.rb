require_relative 'spec_helper'

describe Shelter do

  let(:animal) {Animal.new(name: 'Spot', type: 'dog', age: 5, gender: 'male')}
  let(:shelter) {Shelter.new}

  it "- should be able to list the animals in the shelter" do
    expect(shelter.animals).to eq 'Spot'
  end

end






