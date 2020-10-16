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
        sorted_left = merge_sort(arr.slice(0, arr.length / 2))
        sorted_right = merge_sort(arr.slice(arr.length / 2..-1))
        merge(sorted_left, sorted_right)
    end
end

def merge(l,r)
    if l.empty?
        r
    elsif r.empty?
        l
    elsif l[0] < r[0]
        [l[0]] + merge(l[1..l.length], r)
    else
        [r[0]] + merge(l, r[1..r.length])
    end
end

print merge_sort([5,2,9,0,1,10,20,15]).to_s + "\n"