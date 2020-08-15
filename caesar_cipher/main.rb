def caesar_cipher(str,shift = 0) 
	chr_array = str.split('')
	chr_array.each_with_index   do |chr,ind|
									c = chr.ord 
									capitals = (c >= 65 && c <= 90)
									smalls = (c >= 97 && c <= 122)
								    chr_array[ind] = ((c - 65 + shift + 26) % 26 + 65).chr if capitals 
								    chr_array[ind] = ((c - 97 + shift + 26) % 26 + 97).chr if smalls
							  	end
	chr_array.join							  	
end	