
y = int(input('Enter Number: '))

for i in range(0,10):
    print(2**i)

def FindFour(x):

    if x > 512:
        x = x - 512
    if x > 256:
        x = x - 256
    if x > 128:
        x = x - 128
    if x > 64:
        x = x - 64
    if x > 32:
        x = x - 32
    if x > 16:
        x = x - 16
    if x > 8:
        x = x - 8
    if x < 8 and x >= 4:
        print('Y')
    else:
        print('N')

FindFour(y)
