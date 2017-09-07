class Bottels
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