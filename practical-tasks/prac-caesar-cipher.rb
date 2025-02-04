# optimal solution
# def caesar_cipher(string, shift)
#   alphabet = ('a'..'z').to_a
#   top_alphabet = ('A'..'Z').to_a

#   string.chars.map do |char|
#     if alphabet.include?(char)
#       new_index = (alphabet.index(char) + shift) % 26
#       alphabet[new_index]
#     elsif top_alphabet.include?(char)
#       new_index = (top_alphabet.index(char) + shift) % 26
#       top_alphabet[new_index]
#     else
#       char
#     end
#   end.join
# end

def convert_to_caesar_cypher(string, shift)
  alphabet = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
  top_alphabet = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]

  return '' if !shift.is_a?(Integer) || (!string.is_a?(String) && !string.is_a?(Symbol)) || string.length <= 0

  letters_array = string.strip.split('')
  letters_array.reduce('') do |acc, letter|
    if /[^a-zA-Z]/.match(letter)
      acc << letter
    else
      index = alphabet.index(letter)
      top_index = top_alphabet.index(letter)

      acc << if index
               if (index + shift) > 25
                 alphabet[(index + shift) % 26]
               else
                 alphabet[index + shift]
               end
             elsif (top_index + shift) > 25
               top_alphabet[(top_index + shift) % 26]
             else
               top_alphabet[top_index + shift]
             end

    end
  end
end

def test
  puts 'eee' == convert_to_caesar_cypher('   aaa', 4)
  puts 'abc' === convert_to_caesar_cypher('tuv', 7)
  puts 'a b cc' === convert_to_caesar_cypher('t u vv', 7)
  puts 'A b cC!' === convert_to_caesar_cypher('T u vV!', 7)
  puts '' === convert_to_caesar_cypher('', 1000)
  puts '' === convert_to_caesar_cypher(nil, nil)
  puts convert_to_caesar_cypher('What a string!', 5) === 'Bmfy f xywnsl!'
end

test
