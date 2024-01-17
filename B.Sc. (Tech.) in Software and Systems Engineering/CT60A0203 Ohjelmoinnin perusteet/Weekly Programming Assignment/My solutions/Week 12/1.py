shot1 = {"e101", "e112", "e132", "e104",
         "e105", "e116", "e227", "e128", "e109"}
shot2 = {"e112", "e132", "e105", "e116", "e227", "e109"}
influenza = {"e101", "e132", "e104", "e126",
             "e227", "e148", "e109", "e345", "e156"}


def excuteOption(x):
    st = set()
    if x == 1:
        for i in shot1:
            if i in shot2 and i in influenza:
                st.add(i)
        for j in shot2:
            if j in shot1 and j in influenza:
                st.add(j)
        for k in influenza:
            if k in shot1 and k in shot2:
                st.add(k)
        st = list(st)
        st.sort(reverse=True)
    elif x == 2:
        for i in shot1:
            if i not in shot2 and i not in influenza:
                st.add(i)
        for j in shot2:
            if j not in shot1 and j not in influenza:
                st.add(j)
        for k in influenza:
            if k not in shot1 and k not in shot2:
                st.add(k)
        st = list(st)
        st.sort()
    else:
        return 'Bye'
    return st


x = int(input('Enter the option:'))
print(excuteOption(x))
