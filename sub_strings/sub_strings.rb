def substrings (str,ref)
	str.downcase!
	ans = Hash.new(0)
	ref.each { |word| ans[word] += str.split(word).length-1 if str.include? word.downcase }	
	ans
end	
