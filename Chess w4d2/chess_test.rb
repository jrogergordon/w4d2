require_relative "board"
a = Board.new
a.board.each{ |row| puts row.join(" ")}
p a.move_piece([9,9], [6,6])
a.board.each{ |row| puts row.join(" ")}
