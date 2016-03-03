
THOUSAND = 1000
FIVE_HUNDRED = 500
ONE_HUNDRED = 100
FIFTY = 50
TEN = 10
FIVE = 5
ONE = 1

def to_roman(num)
	roman_array = []
	roman_array << ("M" * (num / THOUSAND))
	remaining_after_thousand = (num - ((num / THOUSAND)*THOUSAND))
	roman_array << ("D" * (remaining_after_thousand / FIVE_HUNDRED))
	remaining_after_five_hundred = (remaining_after_thousand - ((remaining_after_thousand / FIVE_HUNDRED)*FIVE_HUNDRED))
	roman_array << ("C" * (remaining_after_five_hundred / ONE_HUNDRED))
	remaining_after_hundred = (remaining_after_five_hundred - ((FIFTY / ONE_HUNDRED)*ONE_HUNDRED))
	roman_array << ("L" * (remaining_after_hundred / FIFTY))
	remaining_after_fifty = (remaining_after_hundred - ((remaining_after_hundred / FIFTY)*FIFTY))
	roman_array << ("X" * (remaining_after_fifty / TEN))
	remaining_after_ten = (remaining_after_fifty - ((remaining_after_fifty / TEN)*TEN))
	roman_array << ("V" * (remaining_after_ten / FIVE))
	remaining_after_five = (remaining_after_ten - ((remaining_after_ten / FIVE)*FIVE))
	roman_array << ("I" * (remaining_after_five / ONE))
	roman_array.join()
end
 
# Drive code... this should print out true.
 
puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"

p to_roman(9991) 
# TODO: what other cases could you add to ensure your to_roman method is working?

