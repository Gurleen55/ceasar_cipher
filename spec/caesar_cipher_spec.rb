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

  context 'when its lowercase letter' do
    it "shifts them to right by 1" do
      string = 'ef'
      result = caesar_cipher(string, shift)
      expect(result).to eql("fg")
    end
  end

  context 'when its anything other than letters' do
    it "should not change them" do 
      string = '$7'
      result = caesar_cipher(string, shift)
      expect(result).to eql(result)
    end
  end

  context 'when it last close to last alphabets' do
    it "should wrap around to the first ones depending on the shift" do
      string = 'zZ'
      result = caesar_cipher(string, shift)
      expect(result).to eql('aA')
    end
  end
end
