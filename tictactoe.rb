def create_grid
    grid = [["", "", ""],["", "", ""],["", "", ""]]
end

def check_win_condition(grid)
    grid.each do |row|
        if are_all_three_cells_the_same?(row) == true
            return "Current Player: Wins"
        end
    end

# grid = 
# [:x,:o,:o],
# [:x,"",""],
# [:x,"",""]

    grid.flatten.each.with_index do |cell, index|
        cell_one_below = grid.flatten[index+3]
        cell_two_below = grid.flatten[index+6]
        cells_to_compare = [cell, cell_one_below, cell_two_below]
        if are_all_three_cells_the_same?(cells_to_compare) == true
            return "Current Player: Wins"
        end
    end

    # if grid[0][0] == grid[1][1] && grid[0][0] == grid[2][2]
    #     grid[0][0] == :x ? "Player One Wins" : "Player Two Wins"
    # elsif grid[0][2] == grid[1][1] && grid[0][2] == grid[2][0]
    #     grid[0][2] == :x ? "Player One Wins" : "Player Two Wins"
    # end
end

def are_all_three_cells_the_same?(cells)
    cells.uniq.size <= 1
end