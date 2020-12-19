thisdir = dirname(@__FILE__())
any(path -> path==thisdir, LOAD_PATH) || push!(LOAD_PATH, thisdir)

using input
using counting
using coordinates

function main()
    println("Day 3")
    println("Part 1")
    m = parse_input("3/input.txt")
    ans1 = count_trees(m, Slope(1, 3))
    println("# trees: $ans1")

    println("Part 2")
    slopes = [
        Slope(1, 1),
        Slope(1, 3),
        Slope(1, 5),
        Slope(1, 7),
        Slope(2, 1)
    ]
    tree_counts = [count_trees(m, slope) for slope in slopes]
    println("Trees: $tree_counts")
    println("Answer: $(prod(tree_counts))")

end

main()
