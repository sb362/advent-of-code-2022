
function main()
    pt1 = 0
    pt2 = 0

    for line in eachline("input")
        op, me = line[1] - 'A', line[3] - 'X'

        pt1 += 1 + me
        if op == me
            pt1 += 3
        elseif (op + 1) % 3 == me
            pt1 += 6
        end

        if me == 0 # loss
            pt2 += 1 + (    (op + 2) % 3)
        elseif me == 1 # draw
            pt2 += 3 + (1 + op)
        else # win
            pt2 += 6 + (1 + (op + 1) % 3)
        end
    end

    println(pt1)
    println(pt2)
end

main()
