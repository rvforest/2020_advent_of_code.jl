include("input.jl")

println("Day 4")
println("Part 1")

passports = parse_input("4/input.txt")
println("Number valid passports: $(count_valid(passports))")
