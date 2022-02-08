# https://www.codewars.com/kata/recursive-replication
# https://www.rubyguides.com/2015/08/ruby-recursion-and-memoization/

def replicate(times, number)
  return [] if times <= 0 #base step
  res = []
  times.times { res << number }
  res
end

