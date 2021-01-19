
import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var prog = progresses
    var sp = speeds
    var result = [Int]()
    var count = 0
    
    while !prog.isEmpty {
        if prog.first! < 100 {
            for i in prog.indices {
                prog[i] += sp[i]
            }
            
            if count > 0 {
                result.append(count)
                count = 0
            }
            
        } else {
            prog.removeFirst()
            sp.removeFirst()
            count += 1
        }
    }
    
    if count > 0 {
        result.append(count)
        count = 0
    }
    
    return result
}


var progresses = [Int]()
var speeds = [Int]()

progresses = readLine()!.split(separator: " ").map({ Int($0)! })
speeds = readLine()!.split(separator: " ").map({ Int($0)! })

print(solution(progresses, speeds))

