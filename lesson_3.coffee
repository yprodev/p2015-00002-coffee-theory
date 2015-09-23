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

#It would be more difficult to understand but we can use this syntax to ckech an inequality
country in ["Russia", "USA", "UK", "Germany"]
### 
  country === "Russia" || country === "USA" || country === "UK" || country === "Germany";
###

#We can also use existantial oparator. It will check data for Null or Undefined
book = 3435
open book # function like open(book);
#It is more simple with if statement
open book if book # if (book) { open(book); }
#Now we will check Null
open book if book? # if (book != null) {...}
#But it will be different in this case
open book if book isnt null # if (book !== null) {...}
#We can use ? oparator to check typeof function
open? book if book isnt null # if (typeof open === "function") { ... }
#Using ? oparator in cases we want to add value to a property in an object but we don't know if there is a value of this property 
object = {}
object.speed ?= 100 # if (object.speed == null) { ... }
# One more example
this.age = config.age || 10 # In raw JavaScript
# The same thing with checking for Null and Undefined
this.age = config.age ? 10 # Here Coffee Script creates some more variables and avoids asking for the same variable twice

#How to cut the next line?
object.speed = object.speed || 100
# The answere
object.speed ||= 100 #Short variant
object.speed or= 100 #Same thing object.speed || (object.speed = 100);
object.speed &&= 100
object.speed and= 100

















































