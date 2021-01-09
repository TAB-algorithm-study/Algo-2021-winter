import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    let result: Int
    var array = [Int](repeating: 1, count: n)
    
    for i in lost {
        array[i-1] = array[i-1] - 1
    }
    
    for i in reserve {
        array[i-1] = array[i-1] + 1
    }
    
    for (index, value) in array.enumerated() {
        if value == 0 {
            if (index > 0 && array[index-1] > 1) {
                array[index-1] -= 1
                array[index] += 1
            } else if (index < array.count - 1) && array[index+1] > 1 {
                array[index+1] -= 1
                array[index] += 1
            }
        }
    }
    
    result = array.filter {$0 > 0}.count
    
    return result
}

let n: Int = Int(readLine()!)!
let lost = readLine()!.split(separator: " ").map{ Int($0)! }
let reverse = readLine()!.split(separator: " ").map{ Int($0)! }

print(solution(n, lost, reverse))
