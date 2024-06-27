
fn sum_values_test(*values: Int) -> Int:
    var sum: Int = 0
    for value in values:
        sum += value
    return sum

fn sum_values(*values: Int) -> Int:
    var sum: Int = 0
    for value in values:
        sum += value
    return sum

fn add_all[*a: Int]() -> Int:
    var result: Int = 0
    for i in VariadicList(a):
        result+= i
    return result

fn make_worldly(inout *strs: String):
    # This "just works" as you'd expect!
    for i in range(len(strs)):
        strs[i] += " world"

fn main() raises:
    var result = sum_values(3,5,2)
    print(result)
    var result1 = sum_values_test(3,5,2)
    print(result1)
    print(add_all[1, 2, 3]())
