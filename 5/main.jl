using Test

digit_map = Dict(
    'R'=>'1',
    'L'=>'0',
    'B'=>'1',
    'F'=>'0'
)

function seat_id(loc::String)
    bin_string = join([digit_map[c] for c in loc])
    parse(Int, bin_string, base=2)
end

function test()
    @test seat_id("BFFFBBFRRR") == 567
    @test seat_id("FFFBBBFRRR") == 119
end

function main()
    locs = readlines("5/input.txt")
    ids = seat_id.(locs)
    max_id = maximum(ids)
    min_id = minimum(ids)
    println("Max: $max_id")

    seats = Set(min_id:max_id)
    taken = Set(ids)
    my_seat = setdiff(seats, taken)
    println("My seat: $my_seat")
end

test()
main()
