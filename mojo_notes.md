# Key Points from Mojo Documentation
- Value Ownership and argument mutability
- def receives "function arguments by value"
- fn function receives arguments "by immutable reference"
- In Mojo there are two ways of calling functions, def & fn. fn function provides compile-time checks to ensure the function receives and return correct types. def function might fail during runtime if the type received is wrong. 
- Pass by value (owned), pass by reference ( borrowed from immutable reference, as inout for mutable reference)
- These features are entwined with mojo's value ownership model, which protects you from memory errors by ensuring only one variable owns a value at any give time. Ownership ensures that the value is destroyed when the lifetime of owner ends. 
- You can declare var keyword in fn ; ignore in def
- A Struct in mojo is similar to the class in python. They both supports methods, fields, operators overloading, decorators for metaprogramming and so on.
- Mojo structs are completely static - bound at compile-time, so they don't allow dynamic dispatch or any runtime changes to the structure.
- Advantages of structs are Memory Efficiency, Type safety, Performance. 
- Dynamic structures generally have more runtime overhead due to the need for type checking, dynamic memory allocation, and dictionary lookups.
# Traits
- A trait is like a template of characteristics for a struct. 
- To create a struct with the characteristics defined in a trait, you must implement each characteristic ( each method ). 
- Each characteristic in a trait is a "requirement" for the struct and when your struct implement each requirement, it's said to "conform" to the trait.
- Currently, the only characteristics that traits can define are method signatures. Traits can't implement default behaviours for methods
- Traits allows you to write generic functions that can accept any type that conform to a trait, rather than accept only specific types.
# Parameterization
- Parameter is a run time constant, and it's declared in square brackets on a function or struct. 
- These are allowed for compile-time metaprogramming, which means you can generate or modify code at compile time not at run time. 
- In MOJO programming, "parameter" and "argument" are not used interchangeably. So, parameter / parameter function is compile-time parameters, where as argument is runtime value thats declared in parentheses.
- 