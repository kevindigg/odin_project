
def stock_picker(days)

    low = days.min
    high = days.max
    daysToPrune = days.clone
    
    until days.index(low) < days.index(high)
        daysToPrune.delete(low)
        daysToPrune.delete(high)
        low = daysToPrune.min
        high = daysToPrune.max
    end

     p [days.index(low),days.index(high)]
     
end


stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([3,6,9,15,8,6,1,10,17])
stock_picker([3,6,9,15,8,6,10,1,17])

