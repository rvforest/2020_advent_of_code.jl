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

end

main()
