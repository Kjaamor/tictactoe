def create_grid
    grid = [["", "", ""],["", "", ""],["", "", ""]]
end

def check_win_condition(grid)
    grid.each do |row|
        return are_all_three_cells_the_same(row)
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

def are_all_three_cells_the_same(cells)
    if cells.uniq.size <= 1
        return 'Current Player: Wins'
    end
end