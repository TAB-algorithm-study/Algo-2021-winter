# 백준 2164

from collections import deque


def card(DQ):
    while(len(DQ) != 1):
        DQ.popleft()
        DQ.append(DQ.popleft())
    return DQ[0]


n = int(input())
deque = deque([i for i in range(1, n+1)])
print(card(deque))

'''
# 답은 나오는데...시간초과라고 뜬다....
def card(A):
    n = len(A)
    if n == 1:
        return A
    else:
        for i in range(n-1):
            A.pop(0)
            if(len(A) == 1):
                return A
            A.append(A[0])
            A.pop(0)


n = int(input())
queue = []
for i in range(n):
    queue.append(i+1)
Answer = card(queue)
print(Answer[0])
'''
