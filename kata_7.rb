# https://www.codewars.com/kata/recursive-replication
# https://www.rubyguides.com/2015/08/ruby-recursion-and-memoization/

def replicate(times, number)
  arr = []
  if times < 1
    arr
  else
    arr << number
    arr.concat(replicate(times - 1, number))
  end
end

# def replicate(times, number)
#   return [] if times <= 0 #base step
#   res = []
#   times.times { res << number }
#   res
# end

replicate(3, 5)