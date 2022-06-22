def create_grid
    grid = [["", "", ""],["", "", ""],["", "", ""]]
end

def check_win_condition(grid)
    grid.each do |row|
        if row.uniq.size <= 1 && row.uniq[0] == :x
            return 'Player One Wins'
        elsif row.uniq.size <= 1 && row.uniq[0] == :o
            return 'Player Two Wins'
        end
    end
end