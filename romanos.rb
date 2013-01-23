class Romanos
	def valor(param)		
		raise ArgumentError if param <=0 || param>3999

		@data = [
		    ["M"  ,1000],
		    ["CM" , 900],  
		    ["D"  , 500],    
		    ["CD" , 400],    
		    ["C"  , 100],    
		    ["XC" ,  90],    
		    ["L"  ,  50],    
		    ["XL" ,  40],    
		    ["X"  ,  10],    
		    ["IX" ,   9],    
		    ["V"  ,   5],    
		    ["IV" ,   4],    
		    ["I"  ,   1]    
		]

		@data.each do |pair|    
			letter = pair[0]
			value = pair[1]

			if param == value
				return letter
			end
			if param > value
				return letter + valor(param-value)
			end
		end
	end
end
