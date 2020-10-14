def merge_sort(arr)
    new_array = []

    if arr.length < 2
        return arr
    elsif arr.length == 2
        if arr[0] > arr[1]
            temp = arr[0]
            arr[0] = arr[1]
            arr[1] = temp
        end

        new_array += [arr[0], arr[1]]
        return new_array
    else
        new_array.push(merge_sort(arr.slice(0, arr.length / 2)))
        new_array.push(merge_sort(arr.slice(arr.length / 2, arr.length / 2)))
        #merge(arr.slice(0, arr.length / 2), arr.slice(arr.length / 2, arr.length / 2))
        #new_array.flatten!
    end

    return new_array
end

def merge(l,r)
    compare_l = l[0]
    compare_r = r[0]
    new_array = []

    if compare_l < compare_r
        new_array.push(compare_l)
        l.shift
    elsif compare_r < compare_l
        new_array.push(compare_r)
        r.shift
    else
        new_array.push(compare_l)
        l.shift
    end

    print "merge " + new_array.to_s + "\n"
end

print merge_sort([5,2,9,1,0,10,20,15]).to_s + "\n"