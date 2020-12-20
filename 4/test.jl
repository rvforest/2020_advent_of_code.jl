using Test

include("input.jl")
include("passport.jl")

function test_parse_input()
    passports = parse_input("4/example.txt")
    println(passports)
    @test length(passports) == 4
    pp = passports[1]
    @test isa(pp, Passport)
    @test pp["hcl"] == "#fffffd"
end

test_parse_input()