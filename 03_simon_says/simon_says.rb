#write your code here
def echo(input)
  return input
end

def shout(input)
  input.upcase!
end

def repeat(input, times = 2)
  arr = []
  1.upto(times) { arr.push(input) }
  arr.join(" ")
end

def start_of_word(input, letter_numbers = 1)
  input.slice(0, letter_numbers)
end

def first_word(input)
  arr = input.split(" ")
  return arr[0]
end

def titleize(word)
  arr = word.split(" ")
  0.upto(arr.length-1) { |i|
    if (arr[i].length > 3 && arr[i] != "over") || i == 0
      arr[i].capitalize!
    end
}
  arr.join(" ")
end
