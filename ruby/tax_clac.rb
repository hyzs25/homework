
def tax_clac_month(fee,tax_rate)
	tax = fee * tax_rate
	puts "tax is #{tax}"
end

def tax_clac_year(fee,tax_rate)
	tax = fee * tax_rate * 12
	puts "tax is #{tax}"
end

tax_clac_month(5000,0.1)
tax_clac_year(5000,0.1)