#Conditions

if isReady # checks statement
	activate something #Init function with argument something

if isReady
	activate something
	if not isFull # if (!isFull)
		append something

#Indentation very important with using else
if isReady
	activate something
	if not isFull # if (!isFull)
		append something
else
	do prepare #prepare();

#Writing if condition in one line
if isReady then activate something

#Writing if condition in one line with less number of words
activate something if isReady

#We also can use unless instead of if not
if isReady
	activate something
	unless isFull # if (!isFull)
		append something

#Some more code using unless
unless isReady then do prepare

#The same but shorter example
do prepare unless isReady

#We can use this syntax instead of using ? conditional oparator
action = if mode is "Idle" then "sleep" else "wander"
# RAW JavaScript
# action = mode === "Idle" ? "sleep" : "wander";

#the same idea with parameter in the function
show if message then message else warning
#RAW JavaScript
# show(message ? message : warning);

#SWITCH syntax
switch state
	when 0 then message = "request not initialize"
	when 1 then message = "server connection established"
	when 2 then message = "request received"
	when 3 then message = "procession request"
	when 4 then message = "request finished and response is ready"
	else message = "unknown state"


#SWITCH syntax in an anonymous self-invoking function expression
message = switch state
	when 0 then "request not initialize"
	when 1 then "server connection established"
	when 2 then "request received"
	when 3 then "procession request"
	when 4 then "request finished and response is ready"
	else message = "unknown state"

#SWITCH syntax in an anonymous self-invoking function expression with information in the console (using interpolation)
console.log "Message [#{state}] #{switch state
	when 0 then 'request not initialize'
	when 1 then 'server connection established'
	when 2 then 'request received'
	when 3 then 'procession request'
	when 4 then 'request finished and response is ready'
	else 'unknown state'}"










