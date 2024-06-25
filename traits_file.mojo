
trait BehaviourTrait:
    fn print_name(self, x: String): ...

struct XyzStruct(BehaviourTrait):
    var x: String

    fn __init__(inout self, x: String):
        self.x = x
    fn print_name(self, x: String):
        print("hello, Morning!", self.x)



fn main() raises:
    var n = XyzStruct("OzeyMan")
    n.print_name("man")
