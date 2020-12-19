using Test

using input
using coordinates
import map

function test_indexing()
    m = parse_input("3/input.txt")
    n_cols = map.ncol(m)
    n_rows = size(m.layout)[1]
    idx_is_valid = [
        m[Coordinate(i, j)] == m[Coordinate(i, j + n_cols)] 
        for i = 1:n_cols for j = 1:n_rows
    ]
    @test all(idx_is_valid)
end


function test_slope()
    n_tests = 10
    rise = 2
    run = 3

    is_valid_coord = Array{Bool}(undef, n_tests)
    i = 1
    s = Slope(rise, run)
    for coord in s
        if i > n_tests
            break
        end

        is_valid_coord[i] = (i * run == coord.col) && (i * rise == coord.row)
        i += 1
    end
    @test all(is_valid_coord)
end
