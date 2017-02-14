def string_comparison(str1, str2)

  for i in 1..[str1.length, str2.length].max - 1
    a = str1[i]
    b = str2[i]
    return i if a = b
  end

  return -1;
end

puts string_comparison("soo", "boo")