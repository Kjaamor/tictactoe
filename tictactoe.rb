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

    if grid[0][0] == grid[1][0] && grid[1][0] == grid[2][0]
        grid[0][0] == :x ? "Player One Wins" : "Player Two Wins"
    elsif grid[0][1] == grid[1][1] && grid[1][1] == grid[2][1]
        grid[0][1] == :x ? "Player One Wins" : "Player Two Wins"
    elsif grid[0][2] == grid[1][2] && grid[1][2] == grid[2][2]
        grid[0][2] == :x ? "Player One Wins" : "Player Two Wins"
    elsif grid[0][0] == grid[1][1] && grid[0][0] == grid[2][2]
        grid[0][0] == :x ? "Player One Wins" : "Player Two Wins"
    elsif grid[0][2] == grid[1][1] && grid[0][2] == grid[2][0]
        grid[0][2] == :x ? "Player One Wins" : "Player Two Wins"
    end
end