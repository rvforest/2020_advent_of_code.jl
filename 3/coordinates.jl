module coordinates

export Coordinate, Slope


struct Coordinate
    row::Int
    col::Int
end


struct Slope
    rise::Int
    run::Int
end

Base.iterate(s::Slope, state=1) = Coordinate(state * s.rise, state * s.run), (state + 1)
Base.eltype(::Slope) = Coordinate
Base.:+(a::Coordinate, b::Coordinate) = Coordinate(a.row + b.row, a.col + b.col)

end  # module