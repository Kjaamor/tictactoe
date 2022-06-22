require_relative '../tictactoe.rb'

describe 'Tic Tac Toe game' do
    it 'on start up create an empty 3x3 grid' do
        expect(create_grid).to eq ([["", "", ""],["", "", ""],["", "", ""]])
    end
end