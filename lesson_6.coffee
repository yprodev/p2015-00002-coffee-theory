#Loops

# while loop
#-----------------
while isReady
	do something

#Or the same in one line
while isReady then do something

#... the same and shorter
do something while isReady

#while with ! oparator
while not isReady
	do something

#while with ! oparator using until word
until isReady
	do something

#the same with until word in one line
do prepare until isReady

# For Loop
#-----------------
for i in [0..10]
	update i

#... the same thing in one line
for i in [0..10] then update i

#... the same thing in one line with less number of words
update i for i in [0..10]

#we can change step or incriment
update i for i in [0..10] by 4 # changes step to 4
update i for i in [0..10] by .5 # changes step to 0.5

#Also we can use conditions in loops with when word
update i for i in [0..100] when isPrime i # checks i element with function isPrime

console.log i for i in [0..100] when isPrime i

#Using changed increment with when word
console.log i for i in [0..100] by 2 when isPrime i
console.log i for i in [0..100] when isPrime i by 2

#If we want to create an array in a loop as a result of this loop we can do the next thing
primeNumbers = (i for i in [0..100] when isPrime i by 2)
# primeNumbers is a function
primeNumbers = i for i in [0..100] when isPrime i by 2
# primeNumbers will be variable with i in it
primeNumbers = i if i
# if condition with putting i in primeNumbers variable

# For In Loop
# ---------------
show element for element in array

#More logic for filtering elements
show element for element in array when element in rightElements

#Now we can do what we want because of new variable after coma that is recordind our counter (index in this case)
show element for element, index in array when element in rightElements

#Now we can remove this index just write down word remove at the begining of our expression
remove index for element, index in array when element in rightElements

# For Of Loop
#---------------
#Designed for filtering keys in an object (like for..in loop in a raw JavaScript)
console.log property for property of object # show all keys' names of object's object

console.log object[property] for property of object # shows values of objects' keys

#we can save key value in our variable
console.log value for property, value of object # shows values of objects' keys

#also we can see all objects' keys in this exact object only
console.log value for own property, value of object # uses hasOwnProperty method like in a raw JavaScript

#Coffee script compilator behaviour while creating anonymous self-invoked function in a loop. YOU MUST SEE COMPILED VERSION OF THIS PART OF CODE
for event in ["click", "mouseover", "mouseout", "focus"]
	do (event) ->
		mySuperLibrary::["on#{event}"] = (callback) ->
			mySuperLibrary::on event, callback
			return
		return
















