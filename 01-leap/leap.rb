# Write a program that will take a year and report if it is a leap year.

# The tricky thing here is that a leap year in the Gregorian calendar occurs:

# ```plain
# on every year that is evenly divisible by 4
#   except every year that is evenly divisible by 100
#     unless the year is also evenly divisible by 400
# ```

# For example, 1997 is not a leap year, but 1996 is.  1900 is not a leap
# year, but 2000 is.
# TODO jm-rives compact this to one line
def leap_year?(year)
  if year % 4 != 0
    return false
  elsif year % 4 == 0 && year % 400 == 0
    return true
  elsif year % 4 == 0 && year % 100 == 0 
    return false
  else
    return true
  end
end
# iz readable
##########################################################################
# Mistakes made

##########################################################################

# if year % 4 == 0 && year % 400 == 0 && year % 100 == 0
#     return "Yes, #{year} is a leap year"   # unless the year is also evenly divisible by 400
#   elsif year % 4 == 0 && year % 400 == 0 && year % 100 != 0
#     return "No, #{year} is not a leap year" # except every year that is evenly divisible by 100
#   elsif year % 4 == 0 && year % 100 != 0
#     return "Yes, #{year} is a leap year"
#   else 
#     return "No, #{year} is not a leap year"
#   end


##########################################################################
=begin
year % 4 == 0 && year % 400 == 0 && year % 100 == 0
year % 4 == 0 && year % 400 == 0 && year % 100 != 0
year % 4 == 0 && year % 100 != 0
year % 4 != 0
=end

# failing tests with this logic

#   1) Failure:
# YearTest#test_non_leap_year [leap_test.rb:24]:
# No, 1997 is not a leap year


#   2) Failure:
# YearTest#test_non_leap_even_year [leap_test.rb:29]:
# No, 1998 is not a leap year

=begin
if year % 4 == 0 && year % 400 == 0 && year % 100 == 0
    return "Yes, #{year} is a leap year"   # unless the year is also evenly divisible by 400
  elsif year % 4 == 0 && year % 100 == 0
    return "No, #{year} is not a leap year" # except every year that is evenly divisible by 100
  elsif year % 4 
    return "Yes, #{year} is a leap year"
  else
    return "No, #{year} is not a leap year"
  end
=end

# failing tests with this logic
#   1) Failure:
# YearTest#test_century [leap_test.rb:34]:
# No, 1900 is not a leap year


#   2) Failure:
# YearTest#test_non_leap_even_year [leap_test.rb:29]:
# No, 1998 is not a leap year


#   3) Failure:
# YearTest#test_non_leap_year [leap_test.rb:24]:
# No, 1997 is not a leap year