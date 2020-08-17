def stock_picker list
	temp = 0
	ans = Hash.new
	list.each_with_index do |v,i| 
				temp = v
				list[i] = 0
				list.each { |v| ans[[temp,v]] = v-temp if v > temp }					
			end
	ans = ans.sort_by {|k,v|  v}
	ans.last[0]
end	
