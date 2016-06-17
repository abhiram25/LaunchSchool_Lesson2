def short_long_short(string_a, string_b)
  length_a = string_a.length
  length_b = string_b.length
  length_a >= length_b ? "#{string_b+string_a+string_b}" : "#{string_a+string_b+string_a}"
end

puts short_long_short("move", "mop")