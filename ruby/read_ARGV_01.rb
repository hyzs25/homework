filename = ARGV.first
script = $0

puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL+C(^C)."
puts "If you do want that,hit RETURN."

print "?"

STDIN.gets

puts "Opening the file ...."
target = File.open(filename,'r+')

puts "Truncating the file,goodbye!"
File.truncate(target,5)

puts "Now i'm going to ask you for three lines"

print "line1: "; line1 = STDIN.gets.chomp()
print "line2: "; line2 = STDIN.gets.chomp()   
print "line3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally,we close it"
target.close()