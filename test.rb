scores = [{ id: 1, number: 20 }, { id: 2, number: 30}, { id: 3, number: 40}]
scores.inject(0) {|sum, hash| sum + hash[:number]}