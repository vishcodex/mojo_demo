
struct Person:
    var first: String
    var second: String

    fn __init__(inout self, first: String, second: String):
        self.first = first
        self.second = second
    fn dump(self):
        print(self.first, self.second)

fn main() raises:
    var n = Person("Ozey", "Man")
    n.dump()
