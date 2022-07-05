require_relative '../tictactoe.rb'

describe 'Tic Tac Toe game' do
    describe "Grid Initialize" do
        it "on start up create an empty 3x3 grid" do
            expect(create_grid).to eq ([["", "", ""],["", "", ""],["", "", ""]])
        end
    end
    describe 'no winner' do
        it "return nothing given no three symbols in a row, column or diagonal" do
            expect(check_win_condition([[:x,"",:x],[:o,:o,""],["","",""]])).not_to eq("Current Player: Wins")
        end
    end
    describe 'win conditions' do
        describe 'testing for complete rows' do
            it "return current player wins given three x's in the top row" do
                expect(check_win_condition([[:x,:x,:x],[:o,:o,""],["","",""]])).to eq("Current Player: Wins")
            end
            it "return current player wins given three x's in the middle row" do
                expect(check_win_condition([[:x,:o,:o],[:x,:x,:x],[:o,"",""]])).to eq("Current Player: Wins")
            end
            it "return current player wins given three x's in the bottom row" do
                expect(check_win_condition([[:x,:o,:o],[:o,:o,""],[:x,:x,:x]])).to eq("Current Player: Wins")
            end
            it "return current player wins given three o's in any row" do
                expect(check_win_condition([[:o,:o,:o],[:x,:x,""],[:x,"",""]])).to eq("Current Player: Wins")
            end
        end
        describe 'testing for complete columns' do
            it "return current player wins given three x's in the first column" do
                expect(check_win_condition([[:x,:o,:o],[:x,"",""],[:x,"",""]])).to eq("Current Player: Wins")
            end
            it "return current player wins given three x's in any column" do
                expect(check_win_condition([[:o,:x,:o],[:o,:x,""],[:x,:x,""]])).to eq("Current Player: Wins")
            end
            it "return current player wins given three o's in any column" do
                expect(check_win_condition([[:o,:x,:x],[:o,:x,""],[:o,"",:x]])).to eq("Current Player: Wins")
            end
        end
        describe 'testing for complete diagonal' do
            it "return current player wins given three x's in a diagonal line from top left to bottom right" do
                expect(check_win_condition([[:x,:o,:x],[:o,:x,""],[:o,"",:x]])).to eq("Current Player: Wins")
            end
            it "return current player wins given three x's in a diagonal line from top right to bottom left" do
                expect(check_win_condition([[:x,:x,:o],[:x,:o,""],[:o,"",:x]])).to eq("Current Player: Wins")
            end
        end
    end
    # describe 'Update grid based on player moves' do
    #     it 'if player 1 inputs top left as their move choice on an empty grid, the grid reflects this' do
    #         expect(player_input([0,0])). #Still in progress
end