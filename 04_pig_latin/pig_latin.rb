#write your code here
def translate string
  
  # string can be multiple words so we break it into an array of words
  string = string.split(" ")
  
  # Defining what is a vowel
  vowels = ["a","e","i","o","u","y","A","E","I","O","U","Y"]
  punctuation = [".",",","!","?",";",":","'"]
  
  # We execute the piece of code below for every word in string
  for i in 0...string.length
    
    # If there is punctuation at the end of the word
    if punctuation.include?(string[i][-1])
      
      # We will put the letters needed before the punctuation
      place_to_insert = -2
      
    # If there isn't punctiation at the end of the word
    else
      
      # We put the letters at the end of the word
      place_to_insert = -1
    end
      
    # If the first letter is a vowel
    if vowels.include?(string[i][0])
      
      # We add "ay" at the end of the word
      string[i].insert(place_to_insert, "ay")
      
    # If the first letter is a consonant
    else
      
      # We calculate how many consonants are in at the start of the word in a row
      still_a_consonant = true;
      number_of_consonants = 1;
      j = 1;
      while still_a_consonant do
        
        # If the next letter is a vowel
        if vowels.include?(string[i][j])
          
          # If the next letter is a u and had a q before that we count it as a consonant
          if string[i][j] == "u" && string[i][j - 1] == "q"
            j += 1
            number_of_consonants += 1
            
          # If the next vowel is not a u with a q before it
          else
            
          # We break the loop
          still_a_consonant = false;
          end
          
        # If the next letter is a consonant
        else
          number_of_consonants += 1
          j += 1
        end
      end
      
      # If the first letter is capitalized
      if string[i][0] == string[i][0].upcase
        
        # We turn the first letter to lowercase
        string[i][0] = string[i][0].downcase
        
        # And we remember that we did that
        lowercased_the_first_letter = true
        
      # If the first letter was not capitalized
      else
        
        # We remember that we did nothing
        lowercased_the_first_letter = false
      end
        
      # We place the first consonants at the end of the word
      string[i].insert(place_to_insert, string[i][0...number_of_consonants])
      
      # We remove the first letters equal to the amount of consonants
      string[i][0...number_of_consonants] = ""
      
      # If we lowercased the first letter
      if lowercased_the_first_letter
        string[i][0] = string[i][0].upcase
      end
      
      # And then add "ay"
      string[i].insert(place_to_insert, "ay")
    end
  end
  
  # We return the words as a single string separated with a space
  return string.join(" ")
end