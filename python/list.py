list = [1, 2, 3, 5, 8, 13, 21]
print("list", list)
print("Size is {0}".format(len(list)))
list.append([34, 55])
print("list", list)
print("Size is {0}".format(len(list)))
list2 = list[:-1]
print("list2", list2)
print("Size is {0}".format(len(list2)))
list2.extend([34, 55])
print("list", list)
print("Size is {0}".format(len(list)))
print("list2", list2)
print("Size is {0}".format(len(list2)))
