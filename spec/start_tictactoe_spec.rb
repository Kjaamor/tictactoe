require_relative '../tictactoe.rb'

describe 'start game UI' do
    it "prints a welcome message" do
        expect{ start_game() }.to output(include("⚡️⚡️⚡️ WELCOME TO TIC TAC TOE ⚡️⚡️⚡️\n")).to_stdout
    end
    it "prints the game rules" do
        expect{ start_game() }.to output(include("Standard rules apply. Cells are numbered as shown on the below grid. Please pick the cell by its number.\n")).to_stdout
    end
end