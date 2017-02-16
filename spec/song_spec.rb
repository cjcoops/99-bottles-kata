require 'song'

describe Song do

  let(:verse) { double :verse, lines: nil }
  let(:verse_klass) { double :verse_klass, new: verse }
  subject(:song) { described_class.new(verse_klass: verse_klass) }

  it "returns the words a single verse" do
    expected = <<-VERSE
99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.
    VERSE
    allow(verse).to receive(:lines).and_return(expected)
    expect(song.verses(99)).to eq(expected)
  end

  it "returns the words for consecutive verses" do
    ninety_nine_lines = <<-VERSE
99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.
    VERSE

    ninenty_eight_lines = <<-VERSE
98 bottles of beer on the wall, 98 bottles of beer.
Take one down and pass it around, 97 bottles of beer on the wall.
    VERSE

    expected = <<-VERSE
99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.

98 bottles of beer on the wall, 98 bottles of beer.
Take one down and pass it around, 97 bottles of beer on the wall.
    VERSE
    allow(verse).to receive(:lines).and_return(ninety_nine_lines, ninenty_eight_lines)
    expect(song.verses(99,98)).to eq(expected)
  end

end
