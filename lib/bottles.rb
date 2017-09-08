# Speculatively General
class Bottles
  Default = lambda do |verse|
    "#{verse.number} bottles of beer on the wall,\
#{verse.number} bottles of beer.\n \
Take one down and pass it around,\
#{verse.number - 1} bottles of beer on the wall.\n"
  end
  def verse(number)
    verse_for(number).text
  end

  def verse_for(number)
    case number
    when 0 then Verse.new(number, &NoMore)
    else Verse.new(number, &Default)
    end
  end
end

# Class descripe one verse from the song
class Verse
  attr_reader :number
  def initialize(number, &lyrics)
    @number = number
    @lyrics = lyrics
  end

  def text
    @lyrics.call self
  end
end
