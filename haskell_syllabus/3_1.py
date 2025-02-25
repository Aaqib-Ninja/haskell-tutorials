

def pascal (num):
    # Init Array
    arr = [[None]*(n+1) for n in range(num)]
    # print(arr)

    for each_height in range(1, num+1):
        arr[each_height-1] = []

        for idx in range(int((num - each_height)/2), -1, -1):
            print("  ", end="")
            
        for each_row in range (each_height):
            if each_row == 0 or each_row == each_height-1:
                print(1, end="  ")
                arr[each_height-1].append(1)
            else:
                new_val = arr[each_height-2][each_row] + arr[each_height-2][each_row-1]
                arr[each_height-1].append(new_val)
                print(new_val, end="  ")
        print()

    print(arr)

pascal(5)
"""
python3 3_1.py
"""
