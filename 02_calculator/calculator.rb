#write your code here
def add a, b
  return a + b;
end

def subtract a, b
  return a - b;
end

def sum array
  if array.length == 0
    return 0;
  else
    summation = 0;
    for i in 0...array.length
      summation += array[i];
    end
    return summation;
  end
end

def multiply *args
  product = 1;
  for i in 0...args.length do
    product *= args[i];
  end
  return product
end

def power base, exponent
  return base ** exponent;
end

def factorial a
  if a == 0 
    return 1;
  end
  
  result = 1;
  for i in 1..a do
    result *= i;
  end
  return result;
end