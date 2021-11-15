def merge_sort(arr)
  return arr if arr.length < 2

  # Divide & Conquer
  left = merge_sort(arr[0...(arr.length / 2)]) 
  right = merge_sort(arr[(arr.length / 2)..-1]) 

  # Merge
  sorted = []
  iarr, ileft, iright = 0, 0, 0 # Assign pointer values
  while ileft < left.length && iright < right.length
    if left[ileft] < right[iright]
      sorted[iarr] = left[ileft]
      ileft += 1
    else
      sorted[iarr] = right[iright]
      iright += 1
    end
    iarr += 1
  end

  if ileft == left.length
    sorted[iarr..(left.length + right.length - 1)] = right[iright..(right.length - 1)]
  else
    sorted[iarr..(left.length + right.length - 1)] = left[ileft..(left.length - 1)]
  end

  sorted
end

p merge_sort([8, 3, 2, 9, 7, 1, 5, 4])
