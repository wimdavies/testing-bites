require 'counter'

RSpec.describe Counter do
  it "counts to 5 from 5 added to 0" do
    new_count = Counter.new()
    new_count.add(5)
    result = new_count.report
    expect(result).to eq "Counted to 5 so far."
  end
end