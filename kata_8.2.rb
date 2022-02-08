# https://www.codewars.com/kata/to-square-root-or-not-to-square-root
# check if the square root is divisible by 1 with no remainder using Math.sqrt(sq) % 1 == 0

# def square_or_square_root(arr)
#   arr.map do |num|
#     if Math.sqrt(num) % 1 == 0
#       Math.sqrt(num)
#     else
#       num ** 2
#     end
#   end
# end


# a bit shorter
def square_or_square_root(arr)
  arr.map{ |num| Math.sqrt(num) % 1 == 0 ? Math.sqrt(num) : num ** 2 }
end

p square_or_square_root([4,3,9,7,2,1])