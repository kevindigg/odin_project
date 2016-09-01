module Enumerable
	def my_each
		return self unless block_given?
		for i in self
			yield i
		end
		self
	end

	def my_each_with_index
		return self unless block_given?
		i = 0
		while i < self.count
			yield self[i], i
			i += 1
		end
	end

	def my_select
		return self unless block_given?

		results = []		
		my_each { |i| results << i if yield i }
		results
	end

	def my_all?
		if block_given?
			my_each {|i| return false unless yield(i) }
		else 
			my_each {|i| return false unless i }
		end
		true
	end

	def my_any?
		if block_given?
			my_each { |i| return true if yield (i)}
		else
			my_each { |i| return true if i }
		end
		false
	end

	def my_none?
		
	end
end