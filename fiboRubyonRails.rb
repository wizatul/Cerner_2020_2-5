# program for cerner_2^5_2020
def fibo(n)
  curr = 0
  succ = 1

  n.times do |i|
    curr, succ = succ, curr + succ
  end
  # cerner_2^5_2020
  return curr
end
