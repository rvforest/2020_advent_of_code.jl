module counting

export count_trees

using map
using coordinates

TREE = '#'


function count_trees(m::Map, s::Slope)
    tree_count = 0
    start = Coordinate(1, 1)
    for offset in s
        coord = start + offset
        if coord.row > nrow(m)
            break
        end

        println("$coord : $(m[coord])")
        if is_tree(m, coord)
            tree_count += 1
        end
    end
    tree_count
end


function is_tree(m::Map, c::Coordinate)
    m[c] == TREE
end

end  # module