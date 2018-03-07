require_relative 'shared.rb'
#Measurements of 654 thousandths should be input as "0.654"

def adjustment_side(offset)
  offset.negative? ? "A Side" : "B Side"
end

def adjustment_amount(offset)
  sprintf('%.3f', offset.abs)
end

test_board_width = float_input('Enter the width of the test board (inches):')

a = float_input('Enter the width of offcut side A (inches):')

b = float_input('Enter the width of offcut side B (inches):')

fence_length = float_input('Enter the length of your jig\'s fence (inches):')

offset = (a-b) / 2 / test_board_width * fence_length

puts "Offset the #{adjustment_side(offset)} by #{adjustment_amount(offset)}"