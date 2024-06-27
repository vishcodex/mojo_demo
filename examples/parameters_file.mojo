

fn repeat[count: Int](msg: String):
    for i in range(count):
        print(msg)

# In the above function, it has Int parameter type and String argument type. To call a function we need to specify both the parameter and the argument.
# By sepcifying count as parameter, the mojo compiler is able to optimize the function because this value is guranteed to not change at any time. This makes
        #code more performant because there's less to compute at runtime.

fn test_call():
    repeat[5]("Keep going OzeyMan!")

fn main() raises:
    test_call()


