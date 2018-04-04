
y = int(input('Enter Number: '))


def FindFour(x):
    i = 9
    while i > 1:
        if x > 2**i:
            x = x - 2**i
        #print(x)
        if x <= 8:
            break
        i=i-1
        
    if x < 8 and x >= 4:
        print('Y')
    else:
        print('N')
        
FindFour(y)

