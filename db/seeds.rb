str = "Lorem ipsum dolor amet tale ferri mollis epicuri albucius molestie principe perpetua gloriatur debitis"
str2 = "Amet summo graece pri ne. Est in iriure prodesset, vim nominavi explicari patrioque in. Ne vidit dolore inermis cum, usu sumo doctus contentiones cu, sit id debet detracto. Mea habeo rebum efficiendi no, quis rebum saperet his an. Sed an possit nominati, omnis adipiscing nec ad, ad aperiam denique appellantur pri. Quod mundi nemore sed ut."
10.times do |i|
	Event.create({
		name: str.split(" ")[rand(str.split(" ").length)].capitalize,
		event_date: Date.today + rand(3).months,
		place: str.split(" ")[rand(str.split(" ").length)].capitalize,
		description: str2
	})
end