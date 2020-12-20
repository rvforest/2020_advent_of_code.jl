using Pipe

function parse_input(filename::String)

    s = open(filename) do f
        read(f, String)
    end

    s = strip(s)
    passports = parse_passport.(split(s, "\n\n"))
    passports

end


"""Create a dictionary of key/value pairs from a single passport entry"""
function parse_passport(pp_string)
    @pipe pp_string |>
        replace.(_, '\n'=>' ') |>  # Newlines within single passport entry don't have meaning
        split(_, ' ') |>  # Each space denotes a new key/value pair
        split.(_, ':') |>  # Pairs are separated by a colon
        Dict(key=>val for (key, val) in _)
end