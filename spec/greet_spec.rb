require 'greet'

RSpec.describe "greet method" do
  it "returns 'Hello Will when name is Will" do
    result = greet("Will")
    expect(result).to eq "Hello, Will!"
  end
end