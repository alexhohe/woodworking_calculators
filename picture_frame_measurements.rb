require_relative 'shared.rb'

RABBET_WIDTH = 3.0/32.0
PICTURE_THICKNESS_PADDING = 1.0/8.0
FRAME_THICKNESS_PADDING = 1.0/8.0
BLADE_THICKNESS = 3.0/16.0

picture_height = float_input('Enter the HEIGHT of the picture (inches):')
picture_width = float_input('Enter the WIDTH of the picture (inches):')

frame_stock_width = float_input('Enter the WIDTH of the frame stock (inches):')

picture_stack_thickness = float_input('Enter the THICKNESS of the picture, cover, and backing stacked together (inches):')

frame_height_inner = picture_height - RABBET_WIDTH
frame_width_inner = picture_width - RABBET_WIDTH

frame_height_outer = frame_height_inner + (2 * frame_stock_width)
frame_width_outer = frame_width_inner + (2 * frame_stock_width)

min_rabbet_depth = picture_stack_thickness + PICTURE_THICKNESS_PADDING
min_stock_thickness = min_rabbet_depth + FRAME_THICKNESS_PADDING
min_stock_length = (2 * frame_height_outer) + (2 * frame_width_outer) + (5 * BLADE_THICKNESS)

puts '----Frame stock cut list----'
puts "Required stock length > #{min_stock_length} or 2@ > #{min_stock_length / 2.0}"
puts "Recommended stock thickness > #{min_stock_thickness}"
puts "2 @ #{frame_height_inner} as your inner edge. Outer edge ~= #{frame_height_outer} "
puts "2 @ #{frame_width_inner} as your inner edge. Outer edge ~= #{frame_width_outer} "
puts '----Rabbet details----'
puts "Rabbet one side of all inner edges by #{RABBET_WIDTH}, to a depth >= #{min_rabbet_depth}"
