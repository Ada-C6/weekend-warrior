def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
    return true
  elsif year % 400 == 0
    return true
  else
    return false
  end
end


def leap_year?(year)
  if(year % 4 == 0 && year % 100 != 0) || year % 400 ==0
    return true
  end
end
