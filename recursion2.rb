# something

def range_iterative(start, last)
    count = start
    new_arr = [start]
    while counter < last
        new_arr << new_arr[-1] + 1
        count += 1
    end
    new_arr
end

def range_recursive(start, last)
    return [] if start >= last
    range_recursive(start, (last-1))  << last-1


end


# p range_recursive(2,8)

def recursion1(num,exp)
    return 1 if exp == 0
    return num if exp == 1
    num * recursion1(num,exp-1)
end

def recursion2(num,exp)
    return 1 if exp == 0
    return num if exp == 1
    if exp.odd?
       num *( recursion2(num,(exp-1)/2)** 2)
    else
        recursion2(num, exp / 2) ** 2   
    end
    
end
# p recursion1(2,4)
# p recursion2(2,4)

def deep_dup(arr)
  
    arr.map do |ele|
        if ele.is_a? Array
             deep_dup(ele) 
        else
            ele
        end
    end
    
end
# print arr = [1,[2],[3,[4]]]
# print arr[-1][1].object_id

# newarr = deep_dup(arr)
# puts "-----"
# print newarr
# print newarr[-1][1].object_id
require "byebug"
def nth_fib(n)
    if n == 1
        return [0]
    elsif n == 2
        return [0,1]
    else
        temp = nth_fib(n-1)
          temp + [temp[-1] + temp[-2]]

    end
end

# print nth_fib(1) #0
# print nth_fib(2) #1
# print nth_fib(3) #5


def bi_search(arr, num)
    l = arr.length/2
    return l if arr[l] == num
    return nil if arr.length == 1 
     if num < arr[l]
        bi_search(arr[0...l],num)
     else
     var = bi_search(arr[(l+1)..-1],num)
        if var
            l+1 + var
        end
     end
end

# p bi_search([1, 2, 3], 1) # => 0
# p bi_search([2, 3, 4, 5], 3) # => 1
# p bi_search([2, 4, 6, 8, 10], 6) # => 2
# p bi_search([1, 3, 4, 5, 9], 5) # => 3
# p bi_search([1, 2, 3, 4, 5, 6], 6) # => 5
# p bi_search([1, 2, 3, 4, 5, 6], 0) # => nil
# p bi_search([1, 2, 3, 4, 5, 7], 6) # => nil

def merge_sort(arr)
    l = arr.length/2
    return arr if arr.length == 1
    left = arr[0...l]
    right = arr[l..-1]

    merge(merge_sort(left), merge_sort(right))

end

def merge(arr1,arr2=[])
#   if arr1.length == 1 && arr2.length == 1
#    merged = arr1 + arr2
#   return [ merged.min, merged.max ]
#   end
    
    return [] if arr1.nil? 
    return [] if arr2.nil? 
    if arr1==[] && arr2 != []
        return arr2 
    elsif arr1 != [] && arr2 == []
        return arr1
    end
    if arr1[0] >= arr2[0] 
        [arr2[0]] + merge(arr1, arr2[1..-1])
    
    else arr2[0] >= arr1[0]
        [arr1[0]] + merge(arr1[1..-1], arr2)
   
    end
end

#merge sort splits 
#base case sends it merge_sort

# arr = [3,27,38,43]
# b = [9,10,82]
# c = [22,23,55,66,77]

# # print merge(arr,c)

#  print merge_sort ([3,27,38,43,22,3,9,10,82])

def subsets(arr)
    return [] if arr == [] || arr == nil
     return arr if arr.length == 1 
   
    chunks = subsets(arr[0..-2])
    p chunks
    chunks + chunks.map do |subs|
        [subs] + [arr[-1]]
    end
end

p subsets([]) # => [[]]
p subsets([1]) # => [[], [1]]
p subsets([1, 2]) # => [[], [1], [2], [1, 2]]
p subsets([1, 2, 3])
# => [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]

    
