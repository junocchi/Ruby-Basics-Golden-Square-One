require 'diary_entry'

RSpec.describe DiaryEntry do
  it "constructs" do # test example 1
    diary_entry = DiaryEntry.new("my_title", "my_contents")
    expect(diary_entry.title).to eq "my_title"
    # on calling diary_entry.title it expect to show all titles
    expect(diary_entry.contents).to eq "my_contents"
    # on calling diary_entry.contents it expect to show all contents
  end

  describe "#count_words" do
    it "Returns the number of words in the contents" do # test example 2
      diary_entry = DiaryEntry.new("my_title", "A very interesting book")
      expect(diary_entry.count_words).to eq 4
      # on calling the method count_words on diary_entry, it will split contents into an array, separated by empty spaces, then count how many words there are and return the integer.
    end

    it "Return 0 when contents is empty" do # test example 3
      diary_entry = DiaryEntry.new("my_title", "")
      expect(diary_entry.count_words).to eq 0
      # on calling the method count_words on diary_entry, it will return 0 if there's no contents
    end
  end

  describe "#reading_time" do # test example 4
    text = Array.new(200, "bananas").join(" ")
    it "Returns number of minutes a person takes to read contents" do
      diary_entry = DiaryEntry.new("my_title", text)
      expect(diary_entry.reading_time(100)).to eq 2 # if the person reads 100 words per minute,
      # should return 2 minutes, because my content (text) has 200 words
    end
  end
# testar para ver o erro que vai aparecer. A intenção é ter um erro. next step: fazer o code mais básico possível para passar no teste 4

end
