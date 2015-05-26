require_relative 'spec_helper'

describe Animal do

  let(:animal) {Animal.new(name: 'Spot', type: 'dog', age: 5, gender: 'male')}

  it "- should be able to create a new animal" do
    expect(animal.name).to eq 'Spot'
  end

end