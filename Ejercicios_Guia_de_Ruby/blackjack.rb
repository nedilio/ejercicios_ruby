class Card 
	def initialize (suit, numb)
		@suit = suit
		@numb = numb
	end

	def getSuit 
		return @suit
	end

	def getNumb
		return @numb
	end

	def getValue
		
		if numb > 10
			return 10
		elsif numb == 1 
			return 11
		else 
			return numb
		end

	end

	def deal
		s = rand(4)+1

		n = rand(13)+1

		return Card.new(s,n)
	end

def Hand 
	cards = []
	cards << deal
	cards << deal

	def getHand
		return cards
	end

	def score
		bigSum = 0
		numAce = 0

		cards.each do |card|
			if card.getValue === 11
				numAce ++
			end
			bigSum += card.getValue
		end

		while bigSum > 21 || numAce > 0
			numAce --
			bigSum -= 10
		end

	def printHand
		puts "You have in hand "
		cards.each do |card|
			puts "#{getHand} "


