def bubble_sort(unsorted)
  
  i = true 
  
  while i == true
    n = unsorted.length
    i = false
    for j in (0...(n-1))
        if unsorted[j+1] < unsorted[j]
          unsorted[j], unsorted[j+1] = unsorted[j+1], unsorted[j]
          i = true 
        end 
      end 
    end 
    
    return unsorted
    
end

def bubble_sort_by(unsorted)
  
   i = true 
  
  while i == true
    n = unsorted.length
    i = false
    for j in (0...(n-1))
        if yield(unsorted[j+1], unsorted[j]) < 0
          unsorted[j], unsorted[j+1] = unsorted[j+1], unsorted[j]
          i = true 
        end 
      end 
    end 
    
    return unsorted

end


#bubble_sort([4,3,78,2,0,2])

bubble_sort_by(["hi", "hello", "hey"]) do |left, right|
  
  left.length - right.length

end
