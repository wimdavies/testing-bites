require 'present'

RSpec.describe Present do
  it "wraps and unwraps a value" do
    present = Present.new
    present.wrap(5)
    expect(present.unwrap).to eq 5
  end

  context "handles errors correctly"
    it "fails to wrap if contents have already been wrapped" do
      present = Present.new
      present.wrap(5)
      expect { present.wrap(6) }.to raise_error "A contents has already been wrapped."
    end

    it "fails to unwrap when no contents wrapped" do
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end
end