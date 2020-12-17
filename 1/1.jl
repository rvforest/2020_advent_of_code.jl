inputs = parse.(
    Int,
    readlines("1/input.txt")
)

function part1()
    target_sum = 2020
    for (i, a) in enumerate(inputs)
        for b in inputs[(i + 1):end]
            if a + b == target_sum
                println("($a, $b)")
                println("Product: $(a * b)")
                return
            end
        end
    end
end


function part2()
    target_sum = 2020
    for (i, a) in enumerate(inputs)
        for (j, b) in enumerate(inputs[(i + 1):end])
            for c in inputs[(j + 1):end]
                if a + b  + c == target_sum
                    println("($a, $b, $c)")
                    println("Product: $(a * b * c)")
                    return
                end
            end
        end
    end
end

println("Day 1\n-------")
println("Part 1")
part1()

println("\nPart 2")
part2()