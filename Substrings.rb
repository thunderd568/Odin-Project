=begin
This is the Substrings project from The Odin Project for Project Building Blocks
The aim of this is to define a function called substrings that looks for any
valid substring from an array in the dictionary parameter and finds it anywhere
in the string parameter. A hash map will be returned that shows how many times
the substring from the dictionary appeared in the string.
=end
class Substrings
  
  def substrings(string, dictionary)
    
    substrings = Hash.new # Make a new hash map for sub strings found.
    words = string.split(" ") # If multiple words, break them up and put into array

    # Go over the dictionary array of valid substrings, then for each one,
    # go over the newly made array of words from the string to see if it is 
    # in that word, if it is then update the count of how many times that 
    # Particular substring appears.
    dictionary.each { |substring|
      count = 0
      words.each { |word|
        if word.downcase.include?(substring)
          count = count + 1
          substrings[substring] = count
        end
      }
    }
    
    return substrings
  end
end

tester = Substrings.new

=begin
The dictionary is all the valid substrings the function will attempt to identify
in our word parameter. 
=end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own",
"part","partner","sit"]

puts tester.substrings("Howdy partner, sit down! How's it going?",dictionary)
