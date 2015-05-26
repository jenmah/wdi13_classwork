require_relative '../lib/greeter.rb'

describe 'Greeter'  do
  
  it 'greets Jeremy' do
    # name = 'jeremy' # Given
    # result = greet(name) #When
    # expect(result).to eq('Hello Jeremy. How are you?') #Then

    #This is the short version of the Given/When/Then code above
    expect(greet('Jeremy')).to eq('Hello Jeremy. How are you?')
  end

  it 'greets James' do
    expect(greet('James')).to eq('Hello James. How are you?')
  end

end

