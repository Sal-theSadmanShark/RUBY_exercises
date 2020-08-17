def stock_picker list
	temp = 0
	ans = Hash.new
	list.each_with_index do |val,ind| 
				temp = val
				list[ind] = 0
				list.each_with_index { |v,i| ans[[ind,i]] = v-temp if v > temp }					
			end
	ans = ans.sort_by {|k,v|  v}
	ans.last[0]
end	
