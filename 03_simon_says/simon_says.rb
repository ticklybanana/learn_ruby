#write your code here
def echo a
  return a; 
end

def shout a
  return a.upcase;
end

def repeat string, times = 2
  returned_string = (string + " ") * times;
  returned_string.chop!;
  return returned_string;
end

def start_of_word string, number
  return string[0...number];
end

def first_word string
  return string.partition(" ").first;
end

def titleize(word)
  arr = ['a', 'an', 'and', 'the', 'over']
  #Capitalizes everything except for first letters and the little words defined above
  word = word.gsub(/\w+/) {|match| arr.include?(match) ? match : match.capitalize}
  word = word.split(' ')
  word[0].capitalize!
  word = word.join(' ')
  return word
end