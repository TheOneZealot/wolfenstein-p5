class Level
	constructor: (@data) ->
		@height = @data.length
		@width = @data[0].length

		@minimap = true

	render: (fr) ->
		@renderMinimap() if @minimap

	renderMinimap: (x = 0, y = 0, scl = 10) ->
		# draw background
		noStroke()
		fill(0)
		rect(x, y, @width * scl, @height * scl)
		# draw walls
		fill(255)
		for j in [0..@data.length-1]
			for i in [0..@data[j].length-1]
				rect(i * scl + x, j * scl + y, scl, scl) if @data[j][i] > 0
		# draw player
		fill(255, 0, 0)
		ellipse(player.pos.x * scl, player.pos.y * scl, scl * 0.4, scl * 0.4)
		stroke(255, 0, 0)
		line(player.pos.x * scl, player.pos.y * scl,
			player.dir.x * scl + player.pos.x * scl, player.dir.y * scl + player.pos.y * scl)
