require_relative '../tictactoe.rb'

describe 'Tic Tac Toe game' do
    describe "Grid Initialize" do
        it "on start up create an empty 3x3 grid" do
            expect(create_grid).to eq ([["", "", ""],["", "", ""],["", "", ""]])
        end
    end
    # describe 'Update grid based on player moves' do
    #     it 'if player 1 inputs top left as their move choice on an empty grid, the grid reflects this' do
    #         expect(player_input([0,0])). #Still in progress
end