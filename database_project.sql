def count_swaps(arr, ascending=True):
    n = len(arr)
    swap_count = 0
    # Make a copy of the array for sorting
    temp_arr = arr[:]
    
    for i in range(n):
        for j in range(0, n - i - 1):
            if ascending:
                if temp_arr[j] > temp_arr[j + 1]:
                    # Swap adjacent elements if they are in the wrong order
                    temp_arr[j], temp_arr[j + 1] = temp_arr[j + 1], temp_arr[j]
                    swap_count += 1
            else:
                if temp_arr[j] < temp_arr[j + 1]:
                    # Swap adjacent elements if they are in the wrong order (descending)
                    temp_arr[j], temp_arr[j + 1] = temp_arr[j + 1], temp_arr[j]
                    swap_count += 1
    return swap_count

def min_swaps_to_beautiful(arr):
    # Count swaps for ascending and descending order
    ascending_swaps = count_swaps(arr, ascending=True)
    descending_swaps = count_swaps(arr, ascending=False)
    
    # Return the minimum of both
    return min(ascending_swaps, descending_swaps)

# Input
N = int(input())
arr = list(map(int, input().split()))

# Output the result
print(min_swaps_to_beautiful(arr))
