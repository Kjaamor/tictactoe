require_relative "../tictactoe.rb"

describe "start game UI" do
    it "prints a welcome message" do
        expect{ start_game() }.to output(include("⚡️⚡️⚡️ WELCOME TO TIC TAC TOE ⚡️⚡️⚡️\n")).to_stdout
    end
    it "prints the game rules" do
        expect{ start_game() }.to output(include("\nStandard rules apply. Cells are numbered as shown on the below grid. Please pick the cell by its number.\n")).to_stdout
    end
    it "prints graphic of the grid" do
        expect{ start_game() }.to output(include("\n1|2|3\n4|5|6\n7|8|9\n")).to_stdout
    end
    it "asks player to pick a cell" do
        expect{ start_game() }.to output(include("\nPlease pick a cell: ")).to_stdout
    end
end