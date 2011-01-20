class Operation

  attr_reader :rover_moves

  def initialize(moves)
    @rover_moves = []
    convert_moves(moves)
  end

  def convert_moves(moves)
    different_moves = {'M' => Move.forward, 'L' => Move.left, 'R' => Move.right}
    sequence = moves.split(/\s*/)
    sequence.each do |move|
      @rover_moves.push(different_moves[move])
    end
  end

end