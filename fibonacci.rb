# Using iteration, write a method #fibs which takes a number and 
# returns an array containing that many numbers from the fibonacci sequence.

def fibs(num)
  return [0] if num.equal?(0)
  return [0, 1] if num.equal?(1)

  arr = [0, 1]
  i = 1
  (num - 1).times do
    arr << arr[i - 1] + arr[i]
    i += 1
  end
  arr
end

p fibs(0) # => [0]
p fibs(1) # => [0, 1]
p fibs(2) # => [0, 1, 1]
p fibs(5) # => [0, 1, 1, 2, 3, 5]
p fibs(6) # => [0, 1, 1, 2, 3, 5, 8]
