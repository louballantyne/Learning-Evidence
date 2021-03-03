require 'secret-diary'

describe 'SecretDiary' do
  let(:diary) {SecretDiary.new}
  describe 'SecretDiary' do
    it "Should be an instance of SecretDiary class" do
      expect(diary).to be_a SecretDiary
    end
  end
=begin
  describe 'add_entry' do
    it 'adds an entry when the method is called' do
      expect
    end
=end
end
