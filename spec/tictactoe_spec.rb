require_relative '../tictactoe.rb'

describe 'Tic Tac Toe game' do
    describe "Grid Initialize" do
        it "on start up create an empty 3x3 grid" do
            expect(create_grid).to eq ([["", "", ""],["", "", ""],["", "", ""]])
        end
    end

    describe 'Update grid based on player move' do
        it 'if player 1 inputs top left as their move choice on an empty grid, the grid reflects this' do
            expect(update_grid("1")).to eq ([["X", "", ""],["", "", ""],["", "", ""]])
        end
    end
end