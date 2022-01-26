class ConvertCharacter
    def convert_character(character)
        @characters[character]
    end

    def initialize
        @characters = Hash.new
        add_character("a", ".-")
        add_character("b", "-...")
        add_character("c", "-.-.")
        add_character("d", "-..")
        add_character("e", ".")
        add_character("f", "..-.")
        add_character("g", "--.")
        add_character("h", "....")
        add_character("i", "..")
        add_character("j", ".---")
        add_character("k", "-.-")
        add_character("l", ".-..")
        add_character("m", "--")
        add_character("n", "-.")
        add_character("o", "---")
        add_character("p", ".--.")
        add_character("q", "--.-")
        add_character("r", ".-.")
        add_character("s", "...")
        add_character("t", "-")
        add_character("u", "..-")
        add_character("v", "...-")
        add_character("w", ".--")
        add_character("x", "-..-")
        add_character("y","-.--")
        add_character("z", "--..")
        add_character("1", ".----")
        add_character("2", "..---")
        add_character("3", "...--")
        add_character("4", "...-")
        add_character("5", ".....")
        add_character(" ", " ")
    end

    def add_character(character, morse)
        @characters[character] = morse
    end

    def get_characters
        return @characters
    end
end

def convert_input (input)
    morse_string=""
    cc=ConvertCharacter.new
    input.each_char {|c|
        if cc.get_characters.has_key?(c.to_s.downcase)
            morse_string << cc.convert_character(c.to_s.downcase)
        end
    }
    return morse_string
end

puts "What's your input?"
input = gets.chomp
puts convert_input(input)