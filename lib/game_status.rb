# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]]

#won?
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
      return win_combination
    else
    end
  end
  false
end

#full?
def full?(board)
  if board.any? {|index| index == nil || index == " "}
    return false
  else
    return true
  end
end

#draw?
def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  else
    false
  end
end

#over?
def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false
  end
end

#winer
def winner(board)
   if won?(board)
      return board[won?(board)[0]]
   end
end
