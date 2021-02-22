# get n elements of fib series with loop
def fibs(n)
  fib_arr = [0,1,1]
  if n <= 3
    fib_arr[0..n-1]
  else
    n = n - 3
    while n > 0
      fib_arr.push(fib_arr[-1]+fib_arr[-2])
      n = n-1
    end
    fib_arr
  end
end

p fibs(10)

#get n elements of fib series with recursion
def fibs_rec(n, fibs_arr = [0,1,1])
  return fibs_arr[0..n-1] if n < 3
  return fibs_arr if n == 3
  fibs_rec(n-1, fibs_arr.push(fibs_arr[-1]+fibs_arr[-2]))
end

p fibs_rec(10)
