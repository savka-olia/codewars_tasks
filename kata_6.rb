# https://www.codewars.com/kata/build-a-pile-of-cubes

def find_nb(m)
  n = 0
  while m > 0
    n += 1
    m -= n**3
  end
  return m != 0 ? -1 : n
end

p find_nb(1071225)