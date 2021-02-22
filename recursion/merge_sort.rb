# top_down_merge_sort
def merge_sort(arr)
  n = arr.size
  return arr if n == 1

  arrA = arr[0...n / 2]
  arrB = arr[n / 2...n]

  arrA = merge_sort(arrA)
  arrB = merge_sort(arrB)

  merge(arrA, arrB)
end

def merge(a, b)
  c = []

  until a.empty? || b.empty?
    if a.first > b.first
      c.push(b.first)
      b.shift
    else
      c.push(a.first)
      a.shift
    end
  end

  until a.empty?
    c.push(a.first)
    a.shift
  end

  until b.empty?
    c.push(b.first)
    b.shift
  end

  c
end

test_arr = (rand(10)...rand(100)).to_a.shuffle
p merge_sort(test_arr)

# pseudocode:
# mergeSort(a array){
#   n = size of a
#   if (n == 1) return a
#
#   arrA = a[0...n/2]
#   arrB = a[n/2...n]
#   arrA = mergeSort(arrA)
#   arrb = mergeSort(arrB)
#
#   return merge(arrA,arrB)
# }
# merge(arrA, arrB array) arrC array{
#   while (arrA and ArrB not empty){
#     //add smaller element into arrC and remove it from parent array
#     if (arrA[0] > arrB[0])
#       arrC.push(arrB[0])
#       remove arrB[0]
#     else
#       arrC.push(arrA[0])
#       remove arrA[0]
#   }
#
#   //by this point one of the array is empty, it contains the largets element of the bunch
#
#   while (arrA has element){
#     arrC.push(arrA[0])
#     remove arrA[0]
#   }
#   while (arrB has element){
#     arrC.push(arrB[0])
#     remove arrB[0]
#   }
#
#   return arrC
# }
