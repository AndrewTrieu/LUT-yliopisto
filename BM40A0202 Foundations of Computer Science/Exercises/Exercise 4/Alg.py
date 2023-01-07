class FP():
    global b, p
    b = 10
    p = 8

    def __init__(self, e, f):
        self.e = e
        self.f = f

    @staticmethod
    def sum(u, v):
        w = FP(0, 0)
        if u.e > v.e:
            w.e = u.e
            w.f = u.f + v.f / (b**(u.e - v.e))
        else:
            w.e = v.e
            w.f = v.f + u.f / (b**(v.e - u.e))
        w.f = w.f.__round__(8)
        return w


u1 = FP(50, 0.98765432)
u2 = FP(45, 0.50000001)
v1 = FP(49, 0.33333333)
v2 = FP(54, 0.10000000)
print(FP.sum(u1, u2))
print(FP.sum(v1, v2))
