class Timer
  #write your code here
  
  # Reading and writing method for the variable seconds
  attr_accessor :seconds
  
  def initialize
    @seconds = 0
  end
  
  def time_string 
    # Calculate how many hours, minutes and seconds that value is
    hours = @seconds.to_i / 3600
    minutes = (@seconds.to_i % 3600) / 60
    seconds = (@seconds.to_i % 3600) % 60
    
    # Converting the numbers to strings so we can manipulate them
    hours = hours.to_s
    minutes = minutes.to_s
    seconds = seconds.to_s
    
    # If the numbers are only one digit long we add a 0 before them
    if hours.length == 1 
      hours = hours.insert(0,"0")
    end
    
    if minutes.length == 1 
      minutes = minutes.insert(0,"0")
    end
    
    if seconds.length == 1 
      seconds = seconds.insert(0,"0")
    end
    
    # Join the hours, minutes and seconds using the specified format
    return hours + ":" + minutes + ":" + seconds
  end
end
