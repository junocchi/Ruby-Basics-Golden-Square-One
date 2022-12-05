require "greet"

describe "Greeter" do
  it 'greets John' do
    expect(greet("John")).to eq "Hello, John!"
  end
end