#
# testCount = int(input())
#
# for _ in range(testCount):
#     result = 1
#     people = []
#
#     temp = int(input())
#     for _ in range(temp):
#         scores = list(map(int, input().split()))
#         people.append(scores)
#
#     people.sort()
#
#     min = people[0][1]
#
#     for i in range(len(people)):
#         if people[i][1] < min:
#             min = people[i][1]
#             result += 1
#
#     print(result)

import sys

t = int(input())

for _ in range(t):
    n = int(input())
    lst = sorted([list(map(int, sys.stdin.readline().strip().split())) for x in range(n)],
                 key = lambda x: x[0])

    cnt = 1
    min = lst[0][1]

    for i in range(1, n):
        if lst[i][1] < min:
            min = lst[i][1]
            cnt += 1

    print(cnt)