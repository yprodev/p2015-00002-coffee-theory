#This is one line comment in coffee script

###
Multiline
comment
in coffee
script
###

a = 10;
b = 20
bool = true

#boolean values
bool1 = true; bool2 = on; bool3 = yes;
bool4 = false; bool5 = off; bool6 = no;

#Strings
oneLineString = "Some
very long
multiline
string";

fewLinesString = 'Some
very long
multiline
string';

#Text that corrects indents, tabs and so on
heredocString = """Some more text with
special symbols
for converting it
in valid JavaScript""";

#The same thing in single quotes
heredocString = '''Some more text with
special symbols
for converting it
in valid JavaScript''';

#How to do this in Coffee Script?
name = "Myname";
greeting = "Hello " + name + "!";

#The answer is here
name2 = "userName";
greeting2 = "Hi #{name2}!";

#Also we can use methods here
name2 = "userName";
greeting2 = "Hi #{name2.toUpperCase()}!";

#This doesn't work with ordinary quotes
name2 = "userName";
greeting2 = 'Hi #{name2.toUpperCase()}!';

#Arrays
array = [1, 2, 3, 4, 5, 6, 7, 8, 9];

#Some more interesting appearence of arrays (without commas after last index in the row)
array = [
	1, 2, 3
	4, 5, 6
	7, 8, 9
]

#Also we can quickly create ranges
array2 = [0..10];

#If we don't want to include last index (10) we need use three dottes
array3 = [0...10];

#Ranges can start at any point. In this case Coffee Script creates a loop, because of more then 20 indecies in the range.
array4 = [20..90];

#Ranges can be with negative numbers
array5 = [-90..-80];

#Also ranges can be reversed
array6 = [20..5];

#We can use slice method to an array
array7 = [0..10];
array7[5..10]; #slice
array7[5...10]; #slice

#We don't have to write the first element if it's zero
array7[..8]; # slice

#We shouldn't have to use the last element if we want to slice till the last element
array7[5..];

#Copying all array
array7[..]; #in this case it will be only a link
newArray = array7[..]; #in this case it will cope returned slice array

#Working with objects
user =
	name: "John Smith"
	age: 22
	status: "Web Developer"
	skills:
		html: 10
		css: 9
		javascript: 6
		coffeescript: 4

#Working with regular expressions
visa = /^4[0-9]{12}(?:[0-9]{3})?$/
mastercard = /^5[1-5][0-9]{14}$/
americanExpress = /^3[47][0-9]{13}$/

#Working with multiline expressions with comments. It is very usefull thing to comfortably read regular expressions.

visa = ///
	^4 # Starts with 4
	[0-9]{12} # 12 random digits
	(?:[0-9]{3})?$ # New cards have 16 digits
///

mastercard = ///
	^5[1-5] # Starts with 51-55
	[0-9]{14}$ # 14 random digits
///

americanExpress = ///
	^3[47] # Starts with 34 or 37
	[0-9]{13}$ # 13 random digits
///























