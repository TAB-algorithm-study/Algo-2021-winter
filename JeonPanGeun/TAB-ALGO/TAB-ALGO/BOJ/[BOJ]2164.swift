//
//  main.swift
//  TAB-ALGO
//
//  Created by 전판근 on 2021/01/05.
//


class Queue {
    var array: [Int] = []
    var array2: [Int] = []
    
    init(_ queue: [Int]) {
        self.array = queue
    }
    
    var isEmpty: Bool {
        return array.isEmpty && array2.isEmpty
    }
    
    var count: Int {
        return array.count + array2.count
    }
    
    func enqueue(_ n: Int) {
        array.append(n)
    }
    
    func dequeue() -> Int? {
        if array2.isEmpty {
            array2 = array.reversed()
            array.removeAll()
        }
        return array2.popLast()
    }
}

let n = Int(readLine()!)!
var temp = [Int]()

for card in 1...n {
    temp.append(card)
}

var queue: Queue = Queue(temp)


while queue.count != 1 {
    let _ = queue.dequeue()
    if let card = queue.dequeue() {
        queue.enqueue(card)
    }
}

print(queue.dequeue()!)
