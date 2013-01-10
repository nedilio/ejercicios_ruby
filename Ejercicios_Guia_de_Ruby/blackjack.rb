
class Card 
	def initialize (suit, numb)
		@suit = suit
		@numb = numb
	end

	def getSuit 
		suits = %w{ Corazones Treboles Picas Diamantes}
		return suits[@suit]
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
		s = rand(4)

		n = rand(13)+1

		return Card.new(s,n)
	end


class Hand 
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
		puts "Tu mano es: "
		cards.each do |card|
			puts "#{card.getNumb} de #{card.getSuit}"
		end
	end

	def hitMe 
		cards << deal
		return cards
	end

def playAsDealer
	dealerHand = Hand.new
	puts "#{dealerHand.score} "
	while dealerHand.score < 17
		dealerHand.hitMe
		dealerHand.printHand
	end
	dealerHand.printHand
end


def playAsUser
	playerHand = Hand.new
	puts "Tu mano es #{playerHand.printHand}"
	puts "Introduzca S o s para tomar otra carta, n para continuar"
	decision = STDIN.gets.chomp
	while decision.downcase == "s"
		playerHand.hitMe
		puts "Tu mano es #{playerHand.printHand}"
		puts "Introduzca S o s para tomar otra carta, n para continuar"
		decision = STDIN.gets.chomp
	end

	return playerHand
end







