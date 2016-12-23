renderScale = 2

level = undefined
player = undefined

setup = () ->
	createCanvas(320 * renderScale, 200 * renderScale)

	level = new Level([
		[1, 1, 1, 1, 1],
		[1, 0, 1, 0, 1],
		[1, 0, 0, 0, 1],
		[1, 0, 0, 0, 1],
		[1, 1, 1, 1, 1]
		])
	player = new Player(createVector(1.5, 1.5))

draw = () ->
	update(frameRate())
	render(frameRate())

update = (fr) ->
	player.update(fr)

render = (fr) ->
	scale(renderScale)
	background(51)

	level.render(fr)




	# for x in [0..width-1]
	# 	cameraX = 2 * x / width - 1
	# 	rayPos = pos.copy()
	# 	rayDir = dir.copy().add(pln.mult(cameraX))
	#
	# 	mapX = floor(rayPos.x)
	# 	mapY = floor(rayPos.y)
	#
	# 	sideDist = createVector()
	#
	# 	deltaDistX = sqrt(1 + (rayDir.y ** 2) / (rayDir.x ** 2))
	# 	deltaDistY = sqrt(1 + (rayDir.x ** 2) / (rayDir.y ** 2))
	# 	perpWallDist = undefined
	#
	# 	step = createVector()
	#
	# 	hit = 0
	# 	side = undefined
	#
	# 	if rayDir.x < 0
	# 		step.x = -1
	# 		sideDist.x = (rayPos.x - mapX) * deltaDistX
	# 	else
	# 		step.y = 1
	# 		sideDist.x = (mapX + 1 - rayPos.x) * deltaDistX
	# 	if rayDir.y < 0
	# 		step.y = -1
	# 		sideDist.y = (rayPos.y - mapY) * deltaDistY
	# 	else
	# 		step.y = 1
	# 		sideDist.y = (mapY + 1 - rayPos.y) * deltaDistY
	#
	# 	counter = 0
	# 	while hit == 0
	# 		counter++
	# 		console.log(counter)
	# 		if sideDist.x < sideDist.y
	# 			sideDist.x += deltaDistX
	# 			mapX += step.x
	# 			sied = 0
	# 		else
	# 			sideDist.y += deltaDistY
	# 			mapY += step.y
	# 			side = 1
	# 		if worldMap[mapX][mapY] > 0
	# 			hit = 1
	#
	# 	if side == 0
	# 		perpWallDist = (mapX - rayPos.x + (1 - step.x) / 2) / rayDir.x
	# 	else
	# 		perpWallDist = (mapY - rayPos.y + (1 - step.y) / 2) / rayDir.y
	#
	# 	lineHeight = floor(height / perpWallDist)
	# 	drawStart = -lineHeight / 2 + height / 2
	# 	drawStart = 0 if drawStart < 0
	# 	drawEnd = lineHeight / 2 + height / 2
	# 	drawEnd = 0 if drawEnd < 0
	#
	# 	c = if side == 1 then color(220) else color(200)
	#
	# 	stroke(c)
	# 	line(x, drawStart, x, drawEnd)
