from memory.unsafe_pointer import UnsafePointer

fn main():
    print("Hello World!")

    var ptr = UnsafePointer[Int].alloc(10)
    var counter: Int = 5

    var memory = UnsafePointer[Int].address_of(counter)
    print(memory)

