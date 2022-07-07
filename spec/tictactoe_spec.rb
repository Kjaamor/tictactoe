require_relative "../tictactoe.rb"

describe "Tic Tac Toe game" do
    before(:each) do
        @game = TicTacToe.new
    end
    describe "Grid Initialize" do
        it "on start up create an empty 3x3 grid" do
            expect(@game.grid).to eq ([["1", "2", "3"],["4", "5", "6"],["7", "8", "9"]])
        end
    end

    describe "Update grid based on player move" do
        describe "Update_grid method" do
            it "Returns grid with 'X' in position [0][0] given player choice '1'" do
                expect(@game.update_grid("1")).to eq ([["X", "2", "3"],["4", "5", "6"],["7", "8", "9"]])
            end
        end
        it "Keeps track of updates to the grid given one move" do
            @game.update_grid("1")
            expect(@game.grid).to eq ([["X", "2", "3"],["4", "5", "6"],["7", "8", "9"]])
        end
        it "Keeps track of updates to the grid given two moves" do
            @game.update_grid("1")
            @game.update_grid("4")
            expect(@game.grid).to eq ([["X", "2", "3"],["X", "5", "6"],["7", "8", "9"]])
        end
    end

    describe "Prints updated grid" do
        it "given player input of '2' (X:[0][0]) printed grid displays this" do
            @game.update_grid("2")
            expect{ @game.print_grid }.to output(include("1|X|3\n4|5|6\n7|8|9\n")).to_stdout
        end
    end

    describe "Takes input from the player" do
        it "successfully accepts a user input of '7' to the grid" do
            # player_choice = gets.chomp
            # update_grid("player_choice")
            allow(@game).to receive(:gets).and_return("7")
            expect{ @game.print_grid }.to output(include("1|2|3\n4|5|6\nX|8|9\n")).to_stdout
        end
    end
end