inputs = parse.(
    Int,
    readlines("1/input.txt")
)

function main()
    target_sum = 2020
    counter = 0
    for (i, a) in enumerate(inputs)
        for b in inputs[(i + 1):end]
            counter += 1
            if a + b == target_sum
                println("($a, $b)")
                println("Product: $(a * b)")
                break
            end
        end
    end
    println("Loop Count: $counter")

    println("done")
end

main()