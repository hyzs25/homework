module Ex25
	def self.break_words(stuff)
		#this function will break up word for us.
		words = stuff.split(' ')
		words
	end

	def self.sort_words(words)
		#sort the words
		words.sort()   #对数组重新按照升序排序，降序为这样a.sort {|x,y| y <=> x }   #=> ["e", "d", "c", "b", "a"]
	end

	def self.print_first_word(words)
		#print the first word and shifts the others down by one
		word = words.shift()   #从数组中的第一个开始取，取到第N个
		puts word
	end

	def self.print_last_word(words)
		# Prints the last word after popping it off the end.
		word = words.pop()    #从数组的末尾依次弹出
		puts word
	end

	def self.sort_sentence(sentence)
		#takes in a fullsentence and returns the sorted words
		words = break_words(sentence)
		sort_words(words)
	end

	def self.print_first_and_last(sentence)
		#print the first and last words of the sentence.
		words = break_words(sentence)
		print_first_word(words)
		print_last_word(words)
	end

	def self.print_first_and_last_sorted(sentence)
		#sorted the words then prints the first and last one
		words = sort_sentence(sentence)
		print_first_word(words)
		print_last_word(words)
	end
end
