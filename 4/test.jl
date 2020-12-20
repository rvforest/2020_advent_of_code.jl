using Test

include("input.jl")
include("passport.jl")

passports = parse_input("4/example.txt")


function test_parse_input()
    @test length(passports) == 4
    pp = passports[1]
    @test isa(pp, Passport)
    @test pp["hcl"] == "#fffffd"
end


function test_validity_count()
    @test count_valid(passports) == 2
end


test_parse_input()
test_validity_count()