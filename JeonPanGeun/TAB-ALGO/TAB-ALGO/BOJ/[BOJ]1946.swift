let testCount = Int(readLine()!)!

for _ in 0..<testCount {
    var result = 1
    let peopleCount = Int(readLine()!)!
    var people = [[Int]]()

    for _ in 0..<peopleCount {
        let rank = readLine()!.split(separator: " ").map{ Int(String($0))! }
        people.append(rank)
    }

    people.sort { (a, b) -> Bool in
        return a[0] < b[0]
    }

    var min = people[0][1]

    for i in 1..<people.count {
        if people[i][1] < min {
            min = people[i][1]
            result += 1
        }
    }
    print(result)
}
