
def bubble_sort(list)
	no_swap = false

	until no_swap
		no_swap = true
		i = 0
		while i < list.length-1
			if list[i] > list[i+1]
				list[i], list[i+1] = list[i+1], list[i]
				no_swap = false
			end
			i+=1
		end
	end
	return list
end

def bubble_sort_by (list)

	no_swap = false

	until no_swap
		no_swap = true
		i = 0
		while i < list.length-1
			if yield(list[i], list[i+1]) > 0
				list[i], list[i+1] = list[i+1], list[i]
				no_swap = false
			end
			i+=1
		end
	end

	return list
end

p bubble_sort([4,3,78,2,0,2])

p bubble_sort_by(["hi","hello","hey"]) { |left,right| left.length - right.length }