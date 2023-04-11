require 'report_length'

RSpec.describe "report_length method" do
  it "returns 5 for 'horse'" do
    result = report_length("horse")
    expect(result).to eq "This string was 5 characters long."
  end

  it "returns 3 for 'bum'" do
    result = report_length("bum")
    expect(result).to eq "This string was 3 characters long."
  end
end