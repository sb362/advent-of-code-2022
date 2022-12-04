
function main()
    total = 0
    best_totals = Int64[0, 0, 0]
    for line in eachline("input")
        if line == ""
            if total > best_totals[1]
                best_totals[1] = total
                sort!(best_totals)
            end

            total = 0
        else
            total += parse(Int, line)
        end
    end

    println(sum(best_totals))
end

main()
