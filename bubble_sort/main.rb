# compares and sorts all the elements once
def sorter arr
	i = 0
		temp = 0
 		while i<arr.length 
 		  break if arr[i+1] == nil
 		  if arr[i+1] < arr[i]
 		     temp = arr[i]	
		     arr[i] = arr[i+1]
		     arr[i+1] = temp
		  end  
 		  i += 1
		end
end
#goes through all the elements once and checks if the array is sorted
def check_sorted arr
	i = 0
	while i<arr.length 
	  break if arr[i+1] == nil	
 	  sorted = arr[i] <= arr[i+1]
 	  break if sorted == false
 	  i += 1
 	end
 	sorted
end
#keeps sorting the array untill all the elements are sorted in an ascending order
def bubble_sort list
	is_sorted = false
	while is_sorted == false
	  sorter(list)
	  is_sorted = check_sorted(list)
	end
	list
end	