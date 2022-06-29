def create_grid
    grid = [["", "", ""],["", "", ""],["", "", ""]]
end

def check_win_condition(grid)
    grid.each do |row|
        if are_all_three_cells_the_same?(row)
            return "Current Player: Wins"
        end
    end

    grid.flatten.each.with_index do |cell, index|
        cell_one_below = grid.flatten[index+3]
        cell_two_below = grid.flatten[index+6]
        cells_in_column = [cell, cell_one_below, cell_two_below]
        if are_all_three_cells_the_same?(cells_in_column)
            return "Current Player: Wins"
        end
    end

    cells_in_diagonal_left = [grid[0][0], grid[1][1], grid[2][2]]
    cells_in_diagonal_right = [grid[0][2], grid[1][1], grid[2][0]]

    if are_all_three_cells_the_same?(cells_in_diagonal_left) || are_all_three_cells_the_same?(cells_in_diagonal_right)
        return "Current Player: Wins"
    end
end

def are_all_three_cells_the_same?(cells)
    cells.uniq.size <= 1 && cells[0] != ""
end