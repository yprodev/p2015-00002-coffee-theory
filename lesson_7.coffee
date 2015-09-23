#Classes

#Now we will create constructor Person
class Person
	constructor: (name, age) ->
		@name = name
		@age = age
	getInfo: ->
		"Name #{@name}, Age #{@age}"

#The shorter variant
class Person
	constructor: (@name, @age) ->
	getInfo: ->
		"Name #{@name}, Age #{@age}"

#We will add static method of the class Person
class Person
	constructor: (@name, @age) ->

	getInfo: ->
		"Name #{@name}, Age #{@age}"

	@myStatic: ->
		do something # Static method of the whole class

#We will add static value to the whole class
class Person
	constructor: (@name, @age) ->

	getInfo: ->
		"Name #{@name}, Age #{@age}"

	@myStaticNum: 12324 # Static value of the whole class

#Class inheritance
# ----------------
#We will create class which will inherite all properties of Person
class WebDeveloper extends Person #this code will use Parent Class Constructor


class WebDeveloper extends Person #this code will create own constructor of WebDeveloper Class
	constructor: ->
		do something

#But before we will constructor of WebDeveloper Class we need to inherite Person Class Constructor with using word super
class WebDeveloper extends Person
	constructor: ->
		super
		do something


#We also can add argumnets
class WebDeveloper extends Person
	constructor: ->
		super 10, 20, 30
		do something

class WebDeveloper extends Person
	constructor: ->
		super 10, 20, 30
		do something

	getInfo: -> # we will get directly this method of class WebDeveloper
		"my Custom getInfo"


#Getting method from parent class
class WebDeveloper extends Person
	constructor: ->
		super 10, 20, 30
		do something

	getInfo: ->
		super # uses the same parent method
		"my Custom getInfo"


#The same method with arguments
class WebDeveloper extends Person
	constructor: ->
		super 10, 20, 30
		do something

	getInfo: ->
		super arg1, arg2
		"my Custom getInfo"


#Quick using of prototype
Person::myMethod = -> say "hi"
###
  Person.prototype.myMethod = function() {
    return say("hi");
  };
###


#Some usefull information working with
###
var that = this;
var _self = this;
var _this = this;
###

class WebDeveloper extends Person
	constructor: ->
		super 10, 20, 30
		do something

	myMethod: ->
		someFunc ->
			process @age # PROBLEM! We will lose context in raw JavaScript using this code

#WORKING VARIANT
class WebDeveloper extends Person
	constructor: ->
		super 10, 20, 30
		do something

	myMethod: ->
		_this = this
		someFunc ->
			process _this.age

#WORKING VARIANT using Coffee Script Built-In sugar )))
class WebDeveloper extends Person
	constructor: ->
		super 10, 20, 30
		do something

	myMethod: ->
		someFunc => # Here is a solution to save context
			process @age
