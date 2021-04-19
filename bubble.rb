def bubble_sort(array)
    unsorted = true
    while unsorted do
        i=0
        unsorted=false
        while i < array.length-1 do
            if  array[i] > array[i+1]
                tmp = array[i]
                array[i] = array[i+1]
                array[i+1] = tmp
                unsorted = true
            end
            i += 1
        end   
    end

        return array

end

puts bubble_sort([11,3,0,100,40,2])