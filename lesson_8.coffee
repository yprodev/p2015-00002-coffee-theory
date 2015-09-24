###
It is an example in the lesson for Coffee Script on YouTube
It is only a reconstruction of this lesson
This example will work only in Google Chrome Browser
###

class Vec2
	constructor: (x, y) ->
		@x = x ? 0
		@y = y ? 0
	add: (vec) ->
		@x += vex.x
		@y += vex.y
		return @
	copy: -> new Vec2 @x, @y
	getRandom: (min, max) ->
		new Vec2 do Math.random * (max - min) + min,
			do Math.random * (max - min) + min

class World
	constructor: (@canvas) ->
		@ctx = @canvas.getContext '2d'
		@canvasWidth = @canvas.width = 400
		@canvasHeight = @canvas.height = 500

		@objects = []
		@params =
			gravity: new Vec2 0, -.2

	start: -> do @tick

	tick: ->
		do @update
		do @draw
		webkitRequestAnimationFrame @tick.bind @

	update: ->
		object.update ind for object, ind in @objects when object

	draw: ->
		@ctx.clearRect 0, 0, @canvasWidth, @canvasHeight
		@ctx.globalAlpha = 1
		do object.draw for object in @objects

class _Object
	constructor: (config) ->
		@loc = config.loc ? new Vec2
		@speed = config.speed ? new Vec2
		@world = config.world

	update: ->
		unless @ instanceof ParticleSystem
			@speed.add @world.params.gravity
		@loc.add @speed

	notVisible: (threshold) ->
		@loc.y > @world.canvasHeight + threshold or
		@loc.y < -threshold or
		@loc.x > @world.canvasWidth + threshold or
		@loc.x < -threshold



canvas = document.getElementById 'canvas'