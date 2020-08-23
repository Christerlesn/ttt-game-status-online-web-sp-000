# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2], #top_row_win
  [3, 4, 5], #middle_row_win
  [6, 7, 8], #bottom_row_win
  [0, 3, 6], #left_colum_win
  [1, 4, 7], #middle_colum_win
  [2, 5, 8], #right_colum_win
  [0, 4, 8], #diagonal_l_to_r_win
  [2, 4, 6] #diagonal_r_to_l_win

]

def won?(board)
WIN_COMBINATIONS.each do |win_combinations|
  if board = win_combinations
    return win_combinations
  else
    false
  end
