def prompt()
	print ">"
end

def gold_room()
	puts "The room is full of gold,how much do you take?"

	prompt; next_move = gets.chomp()
	if next_move.include?"0" ornext_move.include?"1"
		how_much = next_move.to_i()
	else
		dead("Man,learn to type a number.")
	end

	if how_much < 50
		puts "Nice, you're not greedy,you win!"
		process.exit(0)
	else
		dead("You greedy bastard!")
	end
end

def bear_room()
	puts "There is a bear here."
	puts "The bear has a bunch of honey."
	puts "The fat bear is in front of another door."
	puts "How are you going to move the bear?"
	bear_moved = false

	while true
		prompt;nex_move = gets.chomp()

		if next_move == "take honey"
			dead("The bear looks at you then slaps your face off.")