require_relative "Piece.rb"

class Board < Piece 

  def initialize
    @board = board
    @moving_piece = moving_piece
    @null_piece = null_piece
  end #end of initialize method

  def []=(pos)
  end

  def []=(pos,val)
  end

  def valid_pos?(pos)
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

  def move_piece!(color, start_pos, end_pos)
  end

end #end of board class
