#encoding:utf-8
#个税计算器

print "请输出你的收入："

money = gets.chomp().to_f
tax_start = 3000
month = 10
tax_rate = 0.1
tax = (money-3000) * tax_rate
tax_per_year = (money-tax_start) * month * tax_rate

if money <=3000
puts "您不需要缴纳个税"
else
puts "每月所需缴纳的个人所得税是：#{tax}"
puts "每年所需缴纳的个人所得税是：#{tax_per_year}"
end