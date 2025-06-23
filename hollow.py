def print_hollow_butterfly(N):
    # Upper half of the butterfly
    for i in range(1, N + 1):
        # Left wing
        for j in range(1, i + 1):
            if j == 1 or j == i:
                print("* ", end="")
            else:
                print("  ", end="")
        
        # Spaces in between
        for j in range(1, 2 * (N - i) + 1):
            print("  ", end="")
        
        # Right wing
        for j in range(1, i + 1):
            if j == 1 or j == i:
                print("* ", end="")
            else:
                print("  ", end="")
        print()

    # Lower half of the butterfly
    for i in range(N, 0, -1):
        # Left wing
        for j in range(1, i + 1):
            if j == 1 or j == i:
                print("* ", end="")
            else:
                print("  ", end="")
        
        # Spaces in between
        for j in range(1, 2 * (N - i) + 1):
            print("  ", end="")
        
        # Right wing
        for j in range(1, i + 1):
            if j == 1 or j == i:
                print("* ", end="")
            else:
                print("  ", end="")
        print()

# Example usage:
N_value = 4  # You can change N to any desired number
print_hollow_butterfly(N_value)