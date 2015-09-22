#Using logical oparators
first && second
true || false

#We can use key words for this oparations
first and second
on or no

#We may use not as ! oparator
not isReady or not isOnline

#Using == and ===
a == b #It is like use === in JavaScript
#If you will use === this type, you will get an ERROR during compilation

# Not equal oparator
a != b # Like !== in raw JavaScript

#Also we may write these things like
a is b # ===
a isnt b # !==

#Pay attention!
a isnt b # a !== b
#and
a is not b # a === !b
#differs

#Now you can compare data like in mathematics
10 < a < 20 # (10 < a && a < 20)

#Smart if statement
update a if 10 < a < 20
###
if ((10 < a && a < 20)) {
	update(a);
}
###

#Destructive assignment or parallel assignment
[a, b] = [b, a] # changes places

#Multiple assignment
[book, author, pages] = ["1984", "G.Orwell", 327]

#The same thing works for objects
car =
	make: "Porsche"
	model: "911 Turbo"
	engine:
		type: "V8"
		hp: 478
	cost: 600000

{model, engine: {type}} = car # usefull in getting deeply hidden keys

#Some more tricks with another object
user2 =
	name: "John"
	age: 20
	lastVisit: do Date.now

"age" of user2 # Works as oparator IN in raw JavaScript

#But when we use IN oparator in Coffee Script with arrays we get indexOff method for arrays in JavaScript with >= 0

range = [10..20]
15 in range


















































