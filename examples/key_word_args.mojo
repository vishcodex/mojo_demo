



fn main() raises:
    var temp_celsius = 25
    if temp_celsius > 20:
        print("It is warm.")
        print("The temperature is", temp_celsius * 9 / 5 + 32, "Fahrenheit." )

    temp_celsius = 22
    if temp_celsius < 15: print("It is cool.") # Skipped because condition is False
    if temp_celsius > 20: print("It is warm.")