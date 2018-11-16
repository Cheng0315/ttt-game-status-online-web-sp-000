# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won?(board)
  WIN_COMBINATIONS.each do |combination_arr|
    if combination_arr.all? { |idx| board[idx] == "X" }
      return combination_arr
    elsif combination_arr.all? { |idx| board[idx] == "O" }
      return combination_arr
    end
  end
  false
end

def full?(board)

  if board.any? { |ele| ele == " " || ele =="" || ele == nil}
    false
  else
    true
  end
end
