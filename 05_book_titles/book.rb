class Book
  
  # Reading method for class Book
  attr_reader :title

  # Writing method for class Book
  def title= (value)
    
    # Defining what should never be capitalized
    art_conj_prep = ["the","a","an","and","in","on","of","at"]
    
    # Split the title to individual words
    value = value.split(" ")
    
    # Repeat for all words
    for i in 0...value.length do
      
      # If the word is an article, conjuction or a preposition
      if art_conj_prep.include?(value[i])
        
        # If it's the first word in the sentence
        if i == 0
          
          # Turn the first letter into a capital letter
          value[i][0] = value[i][0].upcase
          
        # If it's not the first word in the sentence
        else
          
          # Do nothing
        end
        
      # If the word is not an article, conjuction or a preposition
      else
      
      # Turn the first letter into a capital letter
      value[i][0] = value[i][0].upcase
      end
    end
  
    # Merge the individual words again
    value = value.join(" ")
    @title = value
  end
end
