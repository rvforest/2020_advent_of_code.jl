module input

export parse_input

using map

function parse_input(filename)
    lines = readlines(filename)

    # Create Matrix of characters with input
    n = length(lines)
    m = length(lines[1])
    arr = Matrix{Char}(undef, n, m)
    for row in 1:n
        for (col, val) in enumerate(lines[row])
            arr[row, col] = val
        end
    end
    Map(arr)
end

end  # module