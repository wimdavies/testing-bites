require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "returns correct when passed 'horse'" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end
end