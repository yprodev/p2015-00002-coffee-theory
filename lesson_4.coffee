###
var greet;

greet = function(name) {
	return "Hello " + name + "!";
};
###

greet = (name) -> "Hello #{name}!"

#We always need to use indentation in these cases. Indentation changes for us the curly braces
greet = (name) ->
	"Hello #{name}!"
#Coffee Script changes the word Function on -> sign

#Now we are creating anonymous function without arguments
greet = -> "Hello #{name}!"

#How can we use return word
greet = (name) ->
	do updateSomething
	do changeSomething
	"Hello #{name}!"
	do processSomething #the last expression is return

#But what will happen when we will use conditinal statements
greet = (name) ->
	if name
		"hello" # return "hello"
	else
		"goodbye" # return "goodbye"

#in Coffee Script everything can be an expression if it could be

#We can also use key word return where we want the function to be done
greet = (name) ->
	do updateSomething
	return do changeSomething # this expression is also return
	"Hello #{name}!"
	do processSomething #the last expression is return

#In Coffee Script we don't have analog for Function Declaration. We use Function Expressions

#If we don't want to return something, we can use key word return in the last line of our function
greet = (name) ->
	do updateSomething
	do changeSomething # this expression is also return
	"Hello #{name}!"
	do processSomething #the last expression is return
	return

#If we want to check arguments for a Null, and then give some arguments
greet = (name = "UserName") ->
	do updateSomething
	do changeSomething # this expression is also return
	"Hello #{name}!"
	do processSomething #the last expression is return
	return

#Some more arguments
greet = (name = "UserName", greeting = "Bonjour") ->
	do updateSomething
	do changeSomething # this expression is also return
	"Hello #{name}!"
	do processSomething #the last expression is return
	return

#If we don't know arguments length. Coffee Script will create array of argumnets, that were with three dottes
greet = (length, vectors...) ->
	do updateSomething
	do changeSomething # this expression is also return
	"Hello #{name}!"
	do processSomething #the last expression is return
	return

#Now lets say something about Scope
outer = 10

func = ->
	outer = 20
	inner = 20
	return

#Do function - someFunction(); in raw JavaScript
update object # In Coffee Script. Object here is a parameter

#Another example
show update object, 10, 20 # show(update(object, 10, 20));
show update(object, 10, 20), "fast" # show(update(object, 10, 20), "fast");

#Some more simple example
show() # show();
do show # show ();

#Binary oparators
a + b # a + b
a   +   b # a + b
a+    b # a + b
a    +b # a(+b);

#Anonymous self-invoked function
do -> do something
### (function() {
    return something();
  })();
###
