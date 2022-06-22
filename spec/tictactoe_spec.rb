require_relative '../tictactoe.rb'

describe 'Tic Tac Toe game' do
    it 'on start up create an empty 3x3 grid' do
        expect(create_grid).to eq ([["", "", ""],["", "", ""],["", "", ""]])
    end
    describe 'win conditions' do
        it 'return player 1 wins given three x\'s in any row' do
            expect(check_win_condition([[:x,:x,:x],[:o,:o,""],["","",""]])).to eq("Player One Wins")
        end
        it 'return player 2 wins given three o\'s in any row' do
            expect(check_win_condition([[:o,:o,:o],[:x,:x,""],[:x,"",""]])).to eq("Player Two Wins")
        end
    end

end

# update_grid(coordinates) (starting player is always x)
# calculate_score([x,x,x],[o,x,""],["","",""]) => "Player 1 wins"