class TicTacToe
    
    attr_accessor :grid
    def initialize()
        @grid = [["1", "2", "3"],["4", "5", "6"],["7", "8", "9"]]
    end

    def update_grid(cell_id)
        flat_grid = @grid.flatten
        flat_grid[cell_id.to_i - 1] = "X"
        @grid = flat_grid.each_slice(3).to_a
    end

    def print_grid()
        @grid.each do |row|
            puts row.join("|")
        end
    end

    def start_game
        puts "⚡️⚡️⚡️ WELCOME TO TIC TAC TOE ⚡️⚡️⚡️"
        puts "\nStandard rules apply. Cells are numbered as shown on the below grid. Please pick the cell by its number.\n"
        print_grid()
        print "\nPlease pick a cell: "
        # user_choice = gets.chomp
        # update_grid(user_choice)
        # print_grid()
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
end

# @Kyle: Should this be inside the class as well? Not clear about class design.
def are_all_three_cells_the_same?(cells)
    cells.uniq.size <= 1 && cells[0] != ""
end