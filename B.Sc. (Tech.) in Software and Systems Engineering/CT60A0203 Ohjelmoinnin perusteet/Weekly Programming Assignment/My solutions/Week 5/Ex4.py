import codecs


def rot13(string):
    print(codecs.encode(string, 'rot_13'))


x = input('Enter the string to encrypt: ')
rot13(x)
