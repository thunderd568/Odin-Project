class CeasarsCipher
  
  def ceasar_cipher(string, factor)
    
    word = string.split(" ") # Break the string up into an array of words.
    word.each { |word| # For each word in the string array do blah
      word.each_char {|character| # For each character in the word do blah
        
        # I don't want to consider other characters that are not letters.
        if ("a".."z").include?(character) || ("A".."Z").include?(character) then
          
          factor.times do
            # If I come across a 'Z' or 'z', i'll wrap around and reset to 
            #'A' or 'a'
            if character == "Z" then
              character = "A"
              elsif character == "z" then
              character = "a"
              else
              character = character.next
            end
          end
         end
      print character # Print out the new character once shift is complete.
      }
      print " " # Always print a space at the end just in case there is another
                # word
    }
  end
end

cipher = CeasarsCipher.new
puts "Enter string"
input = gets.chomp
cipher.ceasar_cipher(input,5)



