tot = 256


def anagramAB(str1, str2):
    len1 = len(str1)
    len2 = len(str2)
    cnt = [0] * 256
    if len1 != len2:
        print(str2, "is not a permutation of", str1)
        return
    for i in str1:
        cnt[ord(i)] += 1
    for i in str2:
        cnt[ord(i)] -= 1
    for i in range(tot):
        if cnt[i] != 0:
            print(str2, "is not a permutation of", str1)
            return
    print(str2, "is a permutation of", str1)
    return


a = input('Enter string A :')
b = input('Enter string B :')
anagramAB(a, b)
