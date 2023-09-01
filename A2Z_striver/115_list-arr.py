

''' List methods and properties

Initialization:

Creating an empty list: my_list = [] or my_list = list()
Initializing a list with elements: my_list = [1, 2, 3]


Accessing Elements:

Accessing elements by index: my_list[index]
Negative indexing: my_list[-1] (last element)
Slicing: my_list[start:end]


Adding Elements:

Appending an element: my_list.append(element)
Inserting an element at a specific index: my_list.insert(index, element)
Extending the list with another list: my_list.extend(another_list)
Concatenating lists: new_list = list1 + list2


Removing Elements:

Removing an element by value: my_list.remove(element)
Removing an element by index: del my_list[index]
Pop an element by index: my_list.pop(index) (returns the removed element)
Pop the last element: my_list.pop() (returns the removed element)
Clear the entire list: my_list.clear()


Searching and Checking:

Checking if an element exists in the list: element in my_list
Finding the index of an element: my_list.index(element)
Counting occurrences of an element: my_list.count(element)


Sorting and Reversing:

Sorting in-place: my_list.sort()
Sorting in descending order: my_list.sort(reverse=True)
Reversing the list in-place: my_list.reverse()


List Comprehensions:

Creating a new list based on an existing list: [expression for item in my_list]
Filtering elements with a condition: [expression for item in my_list if condition]


Copying Lists:

Shallow copy: new_list = my_list.copy()
Slicing to create a new list: new_list = my_list[:]


Concatenation and Repetition:

Concatenating lists: new_list = my_list1 + my_list2
Repeating a list: new_list = my_list * n


Length and Membership:

Getting the length of a list: len(my_list)
Checking if a list is empty: not my_list


List unpacking:

Unpacking elements into separate variables: a, b, c = my_list


List Iteration:

Iterating through elements using for loops: for item in my_list:


List comprehension:

Creating a new list based on an existing list: [expression for item in my_list]


List Slicing:

Creating a new list by extracting a portion of an existing list: new_list = my_list[start:end]
'''

''' string methods and properties
String Methods:

str.capitalize(): Returns a copy of the string with the first character capitalized and the rest lowercase.

str.upper(): Returns a copy of the string with all characters in uppercase.

str.lower(): Returns a copy of the string with all characters in lowercase.

str.title(): Returns a copy of the string with the first character of each word capitalized.

str.strip(): Returns a copy of the string with leading and trailing whitespace removed.

str.lstrip(): Returns a copy of the string with leading whitespace removed.

str.rstrip(): Returns a copy of the string with trailing whitespace removed.

str.replace(old, new): Returns a copy of the string with all occurrences of old replaced by new.

str.split(): Splits the string into a list of substrings based on whitespace by default (can specify a different delimiter).

str.join(iterable): Joins the elements of an iterable (e.g., a list) into a single string using the string as a separator.

str.find(substring): Returns the lowest index where the substring is found in the string, or -1 if not found.

str.startswith(prefix): Returns True if the string starts with the specified prefix, otherwise False.

str.endswith(suffix): Returns True if the string ends with the specified suffix, otherwise False.

str.isalpha(): Returns True if all characters in the string are alphabetic (letters), otherwise False.

str.isdigit(): Returns True if all characters in the string are digits, otherwise False.

str.isalnum(): Returns True if all characters in the string are alphanumeric (letters or digits), otherwise False.

str.isnumeric(): Returns True if all characters in the string are numeric, otherwise False.

str.islower(): Returns True if all characters in the string are lowercase, otherwise False.

str.isupper(): Returns True if all characters in the string are uppercase, otherwise False.

str.count(substring): Returns the number of non-overlapping occurrences of substring in the string.

String Properties:

len(str): Returns the length (number of characters) of the string.

Indexing: You can access individual characters in a string using indexing, e.g., str[0] returns the first character.

Slicing: You can extract substrings from a string using slicing, e.g., str[1:4] returns a substring from index 1 to 3.
'''

