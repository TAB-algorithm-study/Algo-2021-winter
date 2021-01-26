import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    
    var copyBoard = board
    var basket = [Int]()
    var result = 0
    
    for move in moves {
        for i in 0..<copyBoard.count {
            if copyBoard[i][move-1] == 0 {
            } else {
                basket.append(copyBoard[i][move-1])
                copyBoard[i][move-1] = 0
                break
            }
        }
        
        if basket.count > 1 {
            if basket[basket.endIndex-1] == basket[basket.endIndex-2] {
                basket.removeLast()
                basket.removeLast()
                result += 2
            }
        }
    }
    
    
    return result
}


var boardSet = [
    [0, 0, 0, 0, 0],
    [0, 0, 1, 0, 3],
    [0, 2, 5, 0, 1],
    [4, 2, 4, 4, 2],
    [3, 5, 1, 3, 1],
]

var movesSet = [1, 5, 3, 5, 1, 2, 1, 4]

print(solution(boardSet, movesSet))
