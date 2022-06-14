module Slideable

    HORIZONTAL_DIRS=  [[0, 1], [1, 0], [-1, 0], [0, -1]]
    DIAGONAL_DIRS=   [[1, 1], [-1, -1], [-1, 1], [1, -1]]

    def horizontal_dirs
         @horizontal_moves = HORIZONTAL_DIRS.map{|ele| ele}
    end
    

    def diagonal_dirs
        @diagonal_moves = DIAGONAL_DIRS.map{|ele| ele}
    end


    def moves

            
    end

    private

    def moves_dirs() #overwritten by subclass
        raise "need a subclass to overwrite"
    end

    def grow_unblocked_moves_in_dir(dx,dy)
        count_blocks = 0
        original_start = [dx, dy]
        directions_arr = self.moves_dirs 

        directions_arr.each do |ele|
            count_blocks = 0
            dx = original_start[0]
            dy = original_start[1]
            while dx < 8 && dx > 0 && dy < 8 && dy > 0 &&  @board[dx, dy] == nil && count_blocks != 2
                if  while @board[ele[0], ele[1]] != nil
                    count_blocks += 1
                end
                if  [dx, dy] == self.pos
                    return true
                else
                    dx += ele[0]
                    dy += ele[1]
                end
            end
        end


    end 
end