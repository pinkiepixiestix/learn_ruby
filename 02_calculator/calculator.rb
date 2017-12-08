#write your code here
def add(augend, addend)
  augend + addend
end

def subtract(minuend, subtrahend)
  minuend - subtrahend
end

def sum(arr)
  sum = 0
  sum = 0 if arr.empty?
  arr.each { |i| sum += i }
  return sum
end
