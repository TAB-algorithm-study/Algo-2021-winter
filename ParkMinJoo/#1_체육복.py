def solution(n, lost, reserve):
    s_reserve = set(reserve) - set(lost)  # 중복이 없다는 조건때문에 set함수 사용
    s_lost = set(lost)-set(reserve)

    for i in s_reserve:
        if i-1 == s_lost:
            s_lost.remove(i-1)
        elif i+1 == s_lost:
            s_lost.remove(i+1)

    return n-len(s_lost)


n = input(int())
lost = list(map(int, input().split()))
reserve = list(map(int, input().split()))
print(solution(n, reserve, lost))
