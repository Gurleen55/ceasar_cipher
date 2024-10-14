require_relative '../lib/ceasar_cipher'

describe "#caesar_cipher" do
  let(:shift) { 1 }
  context 'when its Uppercase letters' do
      it "shifts them to the right by 1" do
      string = "BC"
      result = caesar_cipher(string, shift)
      expect(result).to eql("CD")
    end
  end

  context 'when is lowercase letter' do
    it "shifts them to right by 1" do
      string = 'ef'
      result = caesar_cipher(string, shift)
      expect(result).to eql("fg")
    end
  end
end
