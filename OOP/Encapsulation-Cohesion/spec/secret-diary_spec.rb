require 'secret-diary'

describe 'SecretDiary' do
  let(:diary) {SecretDiary.new}
  describe 'SecretDiary' do
    it "Should be an instance of SecretDiary class" do
      expect(diary).to be_a SecretDiary
    end
  end
  describe 'add_entry' do
    it "won't add an entry when the diary is locked" do
      expect(diary.add_entry("entry")).to eq("Diary locked")
    end
  end
  describe 'add_entry' do
    #it "adds an entry when the diary is unlocked" do
    it "puts the entry into the diary when it's unlocked" do
      diary.unlock
      expect(diary.add_entry("entry")).to eq(["entry"])
    end
  end
  describe "get_entries" do
    it "returns entries if the diary is unlocked" do
      diary.unlock
      diary.add_entry("entry")
      expect(diary.get_entries).to eq(["entry"])
    end
    before do
      diary.lock
    end
    it "won't return entries if the diary is locked" do
      expect(diary.get_entries).to eq("Diary locked")
    end
  end
end
