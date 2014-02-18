class Example:
        def __init__(self, greeting):
            self.x = greeting

        def say_it(self, target):
            return (self.x + ' ' + target)

x = Example("Hello")
print(x.say_it("Yohan"))

