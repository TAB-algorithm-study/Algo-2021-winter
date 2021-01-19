let n = Int(readLine()!)!

var graph: [[(Int, Int, Int)]] = [[(Int, Int, Int)]](repeating: [], count: n+1)

for _ in 0..<n-1 {
    let node = readLine()!.split(separator: " ").map({ Int(String($0))!})
    graph[node[0]].append((node[0], node[1], node[2]))
    graph[node[1]].append((node[1], node[0], node[2]))
}

var visited: [Int] = [Int](repeating: 0, count: n+1)

func dfs(_ start: (Int, Int, Int)) {
    var stack: [(Int, Int, Int)] = [start]
    
    while !stack.isEmpty {
        let now = stack.popLast()!
        if visited[now.1] == 0 {
            visited[now.1] = visited[now.0] + now.2
            
            stack += graph[now.1]
        }
        print(visited)
    }
}

dfs((1, 1, 0))
let max = visited.max()!
var temp = 0

for i in 0..<visited.count {
    if visited[i] == max {
        temp = i
        break
    }
}

visited = [Int](repeating: 0, count: n+1)
dfs((temp, temp, 0))
print(visited.max()!)
