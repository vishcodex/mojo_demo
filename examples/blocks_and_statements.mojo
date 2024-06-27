from python import Python
# For loop
fn loop():
    for x in range(5):
        if x % 2 == 0:
            print(x)

fn use_numpy() raises:
    var np = Python.import_module("numpy")
    var ar = np.arange(15).reshape(3, 5)
    print(ar)
    print(ar.shape)

fn main() raises:
    loop()
    use_numpy()