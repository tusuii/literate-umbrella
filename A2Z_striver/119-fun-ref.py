#remove duplicates from the list using set
def remove_duplicates(my_list):
    my_set = set(my_list)
    my_list.clear()
    my_list.extend(my_set)

original_list = [3, 1, 3, 5, 2, 2, 6, 4]
remove_duplicates(original_list)
print(original_list)
