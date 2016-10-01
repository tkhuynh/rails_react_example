str = "Lorem ipsum dolor amet tale ferri mollis epicuri albucius molestie principe perpetua gloriatur debitis"
10.times do |i|
	Event.create({
		name: str.split(" ")[rand(str.split(" ").length)].capitalize,
		event_date: Time.now,
		place: str.split(" ")[rand(str.split(" ").length)].capitalize,
		description: str
	})
end