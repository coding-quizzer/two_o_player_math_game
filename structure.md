# Two_O_Player Math Game

## Question

- ### State Vars
  - #### **n1, n2**
  the two numbers that are opperated on

- ### Constructor
  - Takes in no arguments
  - Randomly generates n1 and n2 between 1 and 20

- ### Methods
  - #### **solution()**
    - takes no arguments and returns the sum of the addends
  
  - #### **getQuestion()**
    - takes no arguments and returns a question generated from the addends 
    (Example: What does 5 plus 3 equal? )
    (could be to_s())

## Player

  - ### State Vars
    - #### **number**
      - 1 or 2
    - #### **lives**
      - The lives remaining the player
  
  - ### Constructor
    - Takes in player number
    - Sets number to constructor argument and sets lives to 3

  - ### Methods
    - #### **lose_life()**
      - Reduces the value of lives by one

    - #### **lives()** / **to_s()**
      - The current lives remaining

    - #### **is_dead()**
      - Boolean - returns true if the player has 0 lives remaining

## Turn

  - ### State Vars
    

    - #### **player_answer**
      - the answer given by the player

    - #### **player**
      - the current player
    
    - #### **question**
      - the question for the player

  - ### Constructor
    - takes in a player
    - sets the player to the given player
    - generates a new question
    - sets final_turn to false

  - ### Methods
    - #### **final_turn**
      - returns true if the player is dead
    - #### **correct_answer?**
      - returns true if the player answers with the correct answer
    - #### **run_turn()**
      - runs current turn

## Game

  - ### State Vars
    - **Footer**
      - has NEW TURN if round is not final

    - **current_player**
      - the index of the player who currently has a turn

    - **score_message**
      - "P1: 2/3 vs P2: 3/3" if round is not final
      - "Player x wins with a score of (score)"

    - **final_message**
      ```
      score_message
      footer
      (if end_game) goodbye
      ```
      
      
  
  - ### Constructor
    - takes in no arguments
    - generate a list of two players and add to players array
    - set player to first player
    - set round to a new round generated from the current player

  - ### Methods
    - #### **end_game()**
      - prints final message and ends game loop

    - #### **switch_player()**
      - switch current player to the other player

    - ### **generate_round()**
      - generate and run a new round

    - #### **run_game_loop()**
      - run game



    
