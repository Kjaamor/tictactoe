require_relative '../tictactoe.rb'

describe 'Tic Tac Toe game' do
    it "on start up create an empty 3x3 grid" do
        expect(create_grid).to eq ([["", "", ""],["", "", ""],["", "", ""]])
    end
    describe 'win conditions' do
        it "return player 1 wins given three x's in any row" do
            expect(check_win_condition([[:x,:x,:x],[:o,:o,""],["","",""]])).to eq("Player One Wins")
            expect(check_win_condition([[:x,:o,:o],[:o,:o,""],[:x,:x,:x]])).to eq("Player One Wins")
        end
        it "return player 2 wins given three o's in any row" do
            expect(check_win_condition([[:o,:o,:o],[:x,:x,""],[:x,"",""]])).to eq("Player Two Wins")
        end
        it "return player 1 wins given three x's in the first column" do
            expect(check_win_condition([[:x,:o,:o],[:x,"",""],[:x,"",""]])).to eq("Player One Wins")
        end
        it "return player 1 wins given three x's in any column" do
            expect(check_win_condition([[:o,:x,:o],[:o,:x,""],[:x,:x,""]])).to eq("Player One Wins")
        end
        it "return player 2 wins given three o's in any column" do
            expect(check_win_condition([[:o,:x,:x],[:o,:x,""],[:o,"",:x]])).to eq("Player Two Wins")
        end
        it "return player 1 wins given three x's in a diagonal line from top left to bottom right" do
            expect(check_win_condition([[:x,:o,:x],[:o,:x,""],[:o,"",:x]])).to eq("Player One Wins")
        end
        it "return player 2 wins given three x's in a diagonal line from top right to bottom left" do
            expect(check_win_condition([[:x,:x,:o],[:x,:o,""],[:o,"",:x]])).to eq("Player Two Wins")
        end
    end
end