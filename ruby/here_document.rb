#与双引号一致
str = <<EOF
This is a tab: \t 11
and this is a new line \n
EOF

puts str

#加单引号表示与单引号一致。内部不转义
str1 = <<'EOF'
This isn't a tab: \t 11
and this isn't a new line \n
EOF

puts str1

#加了-后结束符可以允许缩进
str2 = <<-EOF
This isn't a tab: \t 11
and this isn't a new line \n
	EOF

puts str2

