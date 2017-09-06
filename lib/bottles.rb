class Bottles
    def initialize()
        @bottels = 99;
       
    end
    def bottle(n)
        if(n > 1)
            "bottles"
        else
            "bottle"
        end
    end
    def last_line(n)
        if(n>0)
            "Take one down and pass it around, #{n} #{bottle(n)} of beer on the wall."
        else
            "Take it down and pass it around, no more bottles of beer on the wall."
        end
    end
    def verse_positive(n)
        expected = <<-VERSE
#{n} #{bottle(n)} of beer on the wall, #{n} #{bottle(n)} of beer.
#{last_line(n-1)}
VERSE
    end
    def verse_zero
        expected = <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
VERSE
    end
    def verse(n)
        verse_positive(n)
    end
end