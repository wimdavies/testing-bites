require 'password_checker'

RSpec.describe PasswordChecker do
  it "returns true for a password longer than 7 characters." do
    checker = PasswordChecker.new
    result = checker.check("longpassword")
    expect(result).to eq true
  end

  context 'fails' do
    it 'when given too short a password' do
      checker = PasswordChecker.new
      expect{ checker.check("short") }.to raise_error "Invalid password, must be 8+ characters."
    end

    it "when given nil" do
      checker = PasswordChecker.new
      expect{ checker.check(nil) }.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end