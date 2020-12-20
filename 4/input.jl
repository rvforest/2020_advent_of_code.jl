using Pipe

function parse_input(filename::String)

    s = open(filename) do f
        read(f, String)
    end

    passports = parse_passport.(split(s, "\n\n"))
    passports

end


function parse_passport(pp_string)
    @pipe pp_string |>
        replace(_, '\n'=>' ') |>
        split(_, ' ') |>
        split.(_, ':') |>
        Dict(key=>val for (key, val) in _)
end