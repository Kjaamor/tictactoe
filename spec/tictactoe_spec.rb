require_relative "../tictactoe.rb"

describe "Tic Tac Toe game" do
    before(:each) do
        @game = TicTacToe.new
    end
    describe "Grid Initialize" do
        it "on start up create an empty 3x3 grid" do
            expect(@game.grid).to eq ([["", "", ""],["", "", ""],["", "", ""]])
        end
    end

    describe "Update grid based on player move" do
        it "if player 1 inputs top left as their move choice on an empty grid, the grid reflects this" do
            expect(@game.update_grid("1")).to eq ([["X", "", ""],["", "", ""],["", "", ""]])
        end
        it "keeps track of updates to the grid" do
            @game.update_grid("1")
            expect(@game.grid).to eq ([["X", "", ""],["", "", ""],["", "", ""]])
        end
    end
end