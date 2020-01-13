def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
  row_index = 0 
  new_array = []
    while row_index < src.count do 
    
      string = ["I love ", src[row_index][0], " and ", src[row_index][1], " on my pizza"].join
      new_array << string
      row_index += 1
    
    end
      new_array
  end

# toppings = [ ["pepperoni", "sausage"], ["green olives", "green peppers"], ["onions", "pineapple"]]
# join_ingredients(toppings)


 def find_greater_pair(src)
#   # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
#   # Produce a new Array that contains the larger number of each of the pairs
#   # that are in the inner Arrays
  
  new_array = []
  row_index = 0 
    while row_index < src.count do 
        if src[row_index][0] < src[row_index][1]
          new_array << src[row_index][1]
        else
          new_array << src[row_index][0]
        end
        row_index += 1
     
    end
    new_array
end

# numbers = [ [1,2], [3,4], [5,6]]
# puts find_greater_pair(numbers)

#Extra try:

# def find_greater_pair(src)
#   new_array = []
#   row_index = 0
#     while row_index < src.count do 
      
#       element_index = 0 
#       greater_element = 0 
#       while element_index < src[row_index].count do 
#         if src[row_index][element_index] > greater_element
#           greater_element = src[row_index][element_index]
#         end 
#           element_index += 1
#       end
#       new_array << greater_element
#     end
#     new_array
# end



def total_even_pairs(src)
#   # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
#   # if both numbers in the pair are even, then add both those numbers to the
#   # total
  
#   # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
#   # the number was even. Review the operator documentation if you've forgotten
#   # this!
  
  total = 0 
  row_index = 0 
    while row_index < src.count do 
      
      remainder_one = src[row_index][0] % 2 
      remainder_two = src[row_index][1] % 2
      
      if remainder_one == 0 && remainder_two == 0 
        total += src[row_index][0]
        total += src[row_index][1]
        
      end
      row_index += 1
    
    end
    total
end

# total_even_pairs[[2,4],[]]
