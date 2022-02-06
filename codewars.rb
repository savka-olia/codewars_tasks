# https://www.codewars.com/kata/my-head-is-at-the-wrong-end

def fix_the_meerkat(arr)
    arr.reverse!
end

fix_the_meerkat([1,23,3])
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

p square_or_square_root([8, 2, 7, 9])

# https://www.codewars.com/kata/recursive-replication
# https://www.rubyguides.com/2015/08/ruby-recursion-and-memoization/

def replicate(times, number)
       if times < 1
          []
        else
          replicate(times - 1, number) + [number]
        end
end

# def replicate(times, number)
#     return [] if times < 1 #base step + exception handling
#     replicate(times - 1, number) + [number] #recursive сall
# end


# def replicate(times, number)
#   return [] if times < 1 #base step
#     res = []
#     times.times { res << number }
#     res
# end

p replicate(3, 5)

# https://www.codewars.com/kata/build-a-pile-of-cubes

def find_nb(m)
    sum = 0
    n = 0
    while sum < m 
        n +=1
        sum += n**3
    end
    return sum != m ? -1 : n
end

p find_nb(1071225)


#https://www.codewars.com/kata/which-x-for-that-sum
# Квадратне рівняння ax**2 + bx + c = 0 . Формула розкладання на множники:
#      -b - sqrt(b**2 - 4*a*c)
#      -----------------------
#             2 * a

# def solve(m)
#   (2 * m + 1 -  Math.sqrt(4 * m + 1)) / (2 * m);
# end
# p solve(12.0)

def solve(m)
  a = m
  b = -2 * m - 1
  c = m

  (-b - Math.sqrt(b ** 2 - 4 * a * c)) / (2 * a)
end

p solve(2)