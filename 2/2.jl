using Pipe

LIMITS = 1
LETTER = 2
PW = 3


function main()
    println("Day 2")
    entries = parse_input("2/input.txt")

    println("Part 1")
    println("Answer: $(part1(entries))")

    println("\nPart 2")
    println("Answer: $(part2(entries))")
end


function parse_input(input_path)
    inputs = split.(readlines(input_path), " ")
    parse_entry.(inputs)
end


function parse_entry(entry)
    lower, upper = @pipe entry[LIMITS] |> split(_, "-") |> parse.(Int, _)
    letter = entry[LETTER][1]
    Entry(
        Policy(letter, lower, upper),
        entry[PW]
    )
end


function part1(inputs)
    sum(entry_is_valid.(inputs))
end


function part2(inputs)
    sum(toboggan_entry_is_valid.(inputs))
end


struct Policy
    letter::Char
    lower::Int
    upper::Int
end


struct Entry
    policy::Policy
    pw::String
end


function entry_is_valid(entry::Entry)
    n = count(i -> i == entry.policy.letter, entry.pw)
    entry.policy.lower <= n <= entry.policy.upper
end


function toboggan_entry_is_valid(entry::Entry)
    pw = entry.pw
    letter = entry.policy.letter
    xor(pw[entry.policy.lower] == letter, pw[entry.policy.upper] == letter)
end


main()