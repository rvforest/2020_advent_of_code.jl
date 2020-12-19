
using input
using counting
using coordinates

function main()
    println("Day 3")
    println("Example Problem")
    m = parse_input("3/test/example_input.txt")
    ans1 = count_trees(m, Slope(1, 3))

    println("# trees: $ans1")

end

main()