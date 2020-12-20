Passport = Dict{SubString{String}, SubString{String}}

REQUIRED_FIELDS = (
    "byr",
    "iyr",
    "eyr",
    "hgt",
    "hcl",
    "ecl",
    "pid"
)

count_valid(pps::Array{Passport, 1}) = sum(is_valid.(pps))
is_valid(pp::Passport) = all(in.(REQUIRED_FIELDS, Ref(keys(pp))))