#  tic_tac_toe-game

Tic-tac-toe (American English), noughts and crosses (British English), or Xs and Os is a paper-and-pencil game for two players, X and O, who take turns marking the spaces in a 3×3 grid. The player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row is the winner. 

## Instructions
├── Gemfile
├── Gemfile.lock
├── README.md
├── .rubocop.yml
├── LICENSE
├──.stickler.yml
├── bin
│   └── main.rb
├── lib
│   └── .gitkeep
    └── game_logic.rb
├── user_interface.rb

# Gemfile
This file sets up gems for our project and can mostly be ignored. Make sure to run bundle before starting this project so that you have all the required gems.

# bin/main.rb
This is our main executable and will be how we run our game.

# lib/game_logic.rb
Our main Game class will be defined here with all the data and logic required to play a game of tic tac toe via instances of TicTacToe.

# Game Conventions
We'll be representing a Tic Tac Toe board using an array of `" "` strings. We'll pass this board to every method as an argument .

We'll be getting user input via gets and a player will choose a position on the board by entering 1-9. Our program will then fill out the appropriate position on the board with the player's token. The term `position` will refer to the spot on the board as the player sees it (1-9).

We will keep track of which player's turn it is and how many turns have been played. We will check to see, at every turn, if there is a winner. If there is a winner, we'll congratulate them. If there is a tie, we will inform our players.

# WIN_COMBINATIONS
Define a WIN_COMBINATIONS constant within the Game class, and set it equal to a nested array filled with the index values for the various winning combinations possible in Tic Tac Toe.

WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5]  # Middle row
  # et cetera, creating a nested array for each win combination
]

# display_board
Define a method that prints the current board representation based on the `@field` instance variable.

# display_board

Define a method into which we can pass user input (in the form of a string, e.g., "1", "5", etc.) and have it return to us the corresponding index of the `@field array`. Remember that, from the player's point of view, the board contains spaces 1-9. But the indices in an array start their count at 0. If the user inputs 5, your method must correctly translate that from the player's perspective to the array's — accounting for the fact that `@field`[5] is not where the user intended to place their token.

# get_move
The `get_move` method must take in two arguments: the index in the `@field array` that the player chooses and the player's token (either "X" or "O"). The second argument, the player's token, should default to "X".

# turn
Build a method `turn` to encapsulate the logic of a single complete turn composed of the following routine:

The user makes a  move by specifying a position between 1-9.
Receive the user's input.
Translate that input into an index value.
If the move is valid, make the move and display the board.
If the move is invalid, ask for a new move until a valid move is received.
All these procedures will be wrapped into our `turn` method. 
You can imagine the pseudocode for the #turn method:

# check_win
The `winner` method should accept a board and return the token, "X" or "O" that has won the game given a winning board.


## Contributions, issues and feature requests are welcome! Start by:

- Forking the project
- Cloning the project to your local machine
- `cd` into the project directory
- Run `git checkout -b your-branch-name`
- Make your contributions
- Push your branch up to your forked repository
- Open a Pull Request with a detailed description to the development branch of the original project for a review


## Built With

- Ruby

### How to get started

- run bin/main.rb


## Authors

👤 **Mbabali Iryn**

- Github: [@mbabaliiryn](https://github.com/mbabaliiryn)
- Twitter: [@IrynMbabali](https://twitter.com/IrynMbabali)
- Linkedin: [Mbabali iryn](https://www.linkedin.com/feed/)

👤 **Kelly Booster**

- Github: [@kelibst](https://github.com/kelibst)
- Twitter: [@keli_booster](https://twitter.com/keli_booster)
- Linkedin: [Kekeli (Jiresse) Dogbevi
](https://www.linkedin.com/in/kekeli-dogbevi-958272108/)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse
- The Odin Project
- Codecademy
- Microverse Technical Support Enginners

## 📝 License

This project is [MIT] licensed.