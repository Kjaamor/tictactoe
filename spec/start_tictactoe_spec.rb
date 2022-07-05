require_relative '../tictactoe.rb'

describe 'start game UI' do
    it "prints a welcome message" do
        expect{ start_game() }.to output("⚡️⚡️⚡️ WELCOME TO TIC TAC TOE ⚡️⚡️⚡️\n").to_stdout
    end
end