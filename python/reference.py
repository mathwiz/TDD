def show(alist, name):
    print(name)
    print(alist)


x = [1, 2, 3, 5, 7, 11]
y = x
show(x, "x")
show(y, "y")
print ("append to list")
x.append(13)
show(x, "x")
show(y, "y")
print ("done")

