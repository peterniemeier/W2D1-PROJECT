require_relative 'piece'
require_relative 'null_piece'

class Board
  attr_accessor :rows
  def initialize
    @rows = Array.new(8) {Array.new(8)}
    @sentinel 
    populate
    
  end
  
  def populate 
    (0...self.rows.length).each do |row|
      (0...self.rows.length).each do |col|
        if row < 2 || row > 5
          @rows[row][col] = Piece.new("blue",@rows,@rows[row][col])
        else
          @rows[row][col] = NullPiece.new()
        end
      end    
    end 
  end 
  
  def [](pos)
    x,y = pos
    @rows[x][y]
  end
  
  def []=(pos,val)
    x,y = pos
    @rows[x][y] = val
  end
  
  def move_piece(start_pos,end_pos)
    x, y = start_pos
    if @rows[x][y].is_a?(NullPiece)
      raise "no piece!"
    elsif !valid_pos?(end_pos)
      raise "cannot move!"
    end 
  end
  
  def valid_pos?(pos)
    return false
  end
  
  def add_piece(piece, pos)
    
  end
  
  def checkmate?(color)

  end
  
  def in_check?(color)
  
  end
  
  def find_king(color)
    
  end
  
  def pieces
  end
  
  def dup
  end
  
  def move_piece!(color,start_pos,end_pos)
    
  end
  
  private 
  
  attr_reader :sentinel
  
end