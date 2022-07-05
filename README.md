# TIC-TAC-TOE

## Requirements

> Using the discipline of TDD, build a game of tic tac toe.

> The game should allow a human to play against an AI.
> The AI should be unbeatable.
> The game should have a user interface of some kind.
> Rules

> The game is played on a 3x3 grid.

> You are X, your opponent is O. Players take turns putting their marks in empty squares.

> The first player to get 3 of their marks in a row (up, down, across, or diagonally) is the winner.

> If all 9 squares are full and no player has 3 marks in a row, the game is over.

# Goals

* Create basic/terminal version first
* Would like a visual representation of the game that is not just in the terminal

## Ideas for grid data structure:

- Cell as a class
- [["x", "o", ""], ["x", "o", ""], ["x", "o", ""]].flatten
- [{1a: "x"},{1b: "o"},{1c: "o"},2a,2b,2c,3a,3b,3c]

#Psuedo code
1_|_|_
2_|_|_
3 | |
 a b c

[a1,a2,a3,b1,b2,b]

## Notes on possible methods:

- update_grid(coordinates) (starting player is always x)
- calculate_score([x,x,x],[o,x,""],["","",""]) => "Player 1 wins"
  
- place_an_x_within_the_grid # updates the grid
- check_win_condition # After every turn taken by human or computer
- place_an_O_within_the_grid # updates the grid
- check_win_condition(grid) # After every turn taken by human or computer

update_grid(player, position)
    if player = 1
        place_an_x_within_the_grid(position)
    else
        place_an_O_within_the_grid
    end

# Flow of program:
- display empty grid
- player enters co-ordinate and hits enter
- displaying an x in that grid
- checking for win state -break on win/drawstate
- arbitary UX pause
- code calculates optimum O position
- code updates grid to include 0
- displaying a 0 in that grid
- checking for win state -break on win/drawstate
- reopen terminal/UI for player

- consider whether the :x/:o element of the win condition can be refactored further to include all 3 winning line position (i.e. full row, full column, diagonal)

- Plan to contain everything within a class so that we have access to instance variables for things like turn

# Flow of possible win-states
- neither win/draw
- win conditions are possible
- win conditions are possible && draw conditions are possible
- only draw conditions are possible
- full grid game is a draw

# Showing the grid with cell references:

1|2|3
4|5|6
7|8|9