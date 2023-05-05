#write a script that will take a string as input and return a list of ascii values
#of the characters in the string. Use a list comprehension in your solution.
#For example, if the user enters hello, the script should return [104, 101, 108, 108, 111].
#Hint: Use the ord() function.
if __name__ == "__main__":
    string = input("Enter a string: ")
    print([ord(char) for char in string])

# Path: copilot.py
