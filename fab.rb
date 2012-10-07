#!/user/bin/ruby

class Tclass
	def initialize(n1,n2,max)
		@@n1 = n1
		@@n2 = n2
		@@max = max
	end
	def	fab
		while @@n1<@@max
			yield @@n1
			@@n1,@@n2=@@n2, @@n1+@@n2
		end
	end
end

tt=Tclass.new(10,20,10000)
tt.fab { |x| puts x }