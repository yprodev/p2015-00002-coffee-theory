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