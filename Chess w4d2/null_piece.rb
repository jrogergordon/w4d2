class NullPiece < Piece
    include Singleton

    attr_reader :color, :symbol
    def initialize
        @color= :nc
        @symbol = " "
    end

    def moves
    end



end