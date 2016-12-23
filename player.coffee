class Player
	constructor: (@pos = createVector(0, 0), @dir = createVector(0, -1)) ->

	update: (fr) ->
		if keyIsDown(LEFT_ARROW)
			@turn(-1)
		else if keyIsDown(RIGHT_ARROW)
		  @turn(1)
		if keyIsDown(UP_ARROW)
			@move(1)
		else if keyIsDown(DOWN_ARROW)
			@move(-1)

	move: (dir) ->
		@pos.add(@dir.copy().mult(dir * 0.02))

	turn: (dir) ->
		@dir.rotate(dir * PI/32)
