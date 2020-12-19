module map

export Map, nrow, ncol

using coordinates

struct Map
    layout::Matrix{Char}
end

nrow(m::Map) = size(m.layout)[1]
ncol(m::Map) = size(m.layout)[2]
Base.getindex(m::Map, c::Coordinate) = m.layout[c.row, base_coord(c.col, ncol(m))]


"""
Convert index to corresponding point in original map

# Arguments
- `i::Int`: The coordinate to convert.
- `n::Int`: The size of the dimension of the coordinate being converted.
"""
base_coord(i::Int, n::Int) = ((i - 1) % n) + 1

end  # module