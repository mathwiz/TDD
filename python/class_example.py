class Example:
        def __init__(self, greeting):
                self.g = greeting

        def say_it(self, target):
                return (self.g + ' ' + target)

        def greeting(self):
                return self.g

x = Example("Hello")
print(x.say_it("Yohan"))
print(x.greeting())
y = Example("Bye")
print(y.say_it("dude"))

      
