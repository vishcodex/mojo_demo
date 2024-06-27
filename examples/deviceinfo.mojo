from sys import (
    os_is_linux,
    os_is_macos,
    os_is_windows,
    has_sse4,
    has_avx,
    has_avx2,
    has_avx512f,
    has_vnni,
    has_intel_amx,
    has_neon,
    is_apple_m1,
    is_apple_m2,
    is_apple_m3,
    num_physical_cores,
    num_logical_cores,
)


fn main() raises:
    print("System information: ")
    var os = ""
    if os_is_linux():
        os = "linux"
    elif os_is_macos():
        os = "macOS"
    else:
        os = "windows"

    var cpu_features = String("")

    if has_intel_amx():
        cpu_features += " intel_amx"
    if has_neon():
        cpu_features += " neon"
    if is_apple_m1():
        cpu_features += " Apple M1"
    if is_apple_m2():
        cpu_features += " Apple M2"
    if is_apple_m3():
        cpu_features += " Apple M3"

    print("    OS             : ", os)
    print("    CPU Features   :", cpu_features)