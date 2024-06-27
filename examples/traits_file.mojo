
#  structs that conforms to the trait.
trait BehaviourTrait:
    fn print_name(self, x: String): ...

struct XyzStruct(BehaviourTrait):
    var x: String

    fn __init__(inout self, x: String):
        self.x = x
    fn print_name(self, x: String):
        print("hello, Morning!", self.x)

# function that uses trait as an argument type instead of struct type

# fn test_the_traits[T: BehaviourTrait](x: T):
#     x.print_name("OzeyMan")
#
# fn test_trait_function():
#     var check = XyzStruct()
#     test_the_traits(check)


fn main() raises:
    var n = XyzStruct("OzeyMan")
    n.print_name("man")
