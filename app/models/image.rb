
class Image < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "user_id", optional: true
  has_many :user_images
  has_many :users, through: :user_images
  belongs_to :category
  serialize :scramble_pos

# each image in the database needs a new attribute: scramble state
# when you create the image, scramble it once, record the positions of the 
# tiles in an array, and save that
# next time you look at the puzzle (or any user does), and hits the scramble 
# button, it will scramble to that predefined state

  def self.scrambler
    pos_hash = {
      0 => 0,
      1 => 1, 
      2 => 2, 
      3 => 3,
      4 => 4,
      5 => 5, 
      6 => 6,
      7 => 7,
      8 => 8,
      9 => 9,
      10 => 10,
      11 => 11,
      12 => 12,
      13 => 13,
      14 => 14,
      15 => 15
    }


    100.times do 
      empty_tile_position = find_empty_tile_positions(pos_hash).to_i
      moveable_positions = moveable_tile_positions(empty_tile_position)
      position_to_move_index = rand(0...moveable_positions.length)

      to_move = pos_hash[moveable_positions[position_to_move_index]]

      pos_hash[empty_tile_position] = to_move      
      pos_hash[moveable_positions[position_to_move_index]] = 15
    end

    pos_hash
  end

  def self.find_empty_tile_positions(pos_hash) 
    pos_hash.key(15)
  end

  def self.moveable_tile_positions(empty)
    grid_size = 16
    row_size = 4

    allowed_positions = []

    allowed_positions.push(empty - row_size) unless empty < row_size
    allowed_positions.push(empty + row_size) unless empty > grid_size - 1 - row_size
    allowed_positions.push(empty - 1) unless empty % row_size == 0
    allowed_positions.push(empty + 1) unless empty % row_size == row_size - 1

    allowed_positions
  end
end